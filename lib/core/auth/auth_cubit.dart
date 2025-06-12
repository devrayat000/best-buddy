import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:async';
import 'dart:developer';
import 'package:get_it/get_it.dart';

import '../storage/storage_service.dart';
import '../services/firebase_messaging_service.dart';
import 'session_service.dart';
import 'biometric_service.dart';

part 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  Timer? _sessionValidationTimer;
  static const Duration _sessionCheckInterval = Duration(minutes: 5);
  final SessionService _sessionService;
  final StorageService _storageService;

  AuthCubit(this._sessionService, this._storageService)
      : super(const AuthInitial());

  /// Initialize auth state and sync with storage
  Future<void> init() async {
    final currentState = state;
    if (currentState is AuthAuthenticated) {
      // Ensure token is in storage for GraphQL client
      final storedToken = await _storageService.getToken();
      if (storedToken == null) {
        await _storageService.setToken(currentState.token);
        await _storageService.setUser({
          'id': currentState.userId,
          'email': currentState.email,
          'name': currentState.name,
          'role': currentState.role,
        });
      }
      // Validate session on app startup
      await validateSession();

      // Start periodic session validation
      _startSessionValidationTimer();
    }
  }

  /// Start periodic session validation timer
  void _startSessionValidationTimer() {
    _sessionValidationTimer?.cancel();
    _sessionValidationTimer = Timer.periodic(_sessionCheckInterval, (_) {
      if (state is AuthAuthenticated) {
        validateSession();
      }
    });
  }

  /// Stop session validation timer
  void _stopSessionValidationTimer() {
    _sessionValidationTimer?.cancel();
    _sessionValidationTimer = null;
  }

  /// Validate current session
  Future<void> validateSession() async {
    if (state is! AuthAuthenticated) return;

    final result = await _sessionService.validateSession();
    switch (result) {
      case SessionValidationResult.valid:
        // Session is valid, no action needed
        break;
      case SessionValidationResult.expired:
      case SessionValidationResult.noToken: // Session expired, logout user
        await logout();
        emit(const AuthSessionExpired());
        break;
      case SessionValidationResult.error:
        // Network or other error, don't logout but show warning
        break;
    }
  }

  /// Login with biometric authentication (if enabled and available)
  Future<void> loginWithBiometric() async {
    emit(const AuthLoading());

    final result = await BiometricService.authenticate(
        reason: 'Please authenticate to access your account');

    switch (result) {
      case BiometricAuthResult.success:
        // Biometric auth successful, validate existing session
        await validateSession();
        break;
      case BiometricAuthResult.notAvailable:
        setError('Biometric authentication is not available on this device');
        break;
      case BiometricAuthResult.notEnrolled:
        setError(
            'Please set up biometric authentication in your device settings');
        break;
      case BiometricAuthResult.lockedOut:
        setError(
            'Biometric authentication is temporarily locked. Please try again later');
        break;
      case BiometricAuthResult.failure:
        setError('Biometric authentication failed');
        break;
      case BiometricAuthResult.error:
        setError('An error occurred during biometric authentication');
        break;
    }
  }

  /// Check if biometric authentication is available
  Future<bool> isBiometricAvailable() async {
    return await BiometricService.isBiometricAvailable();
  }

  Future<void> login({
    required String token,
    required String userId,
    required String email,
    required String name,
    String? role,
  }) async {
    // Save token to storage for GraphQL client
    await _storageService.setToken(token);

    // Save user data to storage
    await _storageService.setUser({
      'id': userId,
      'email': email,
      'name': name,
      'role': role,
    });
    emit(AuthAuthenticated(
      token: token,
      userId: userId,
      email: email,
      name: name,
      role: role,
    ));

    // Register for push notifications and upload FCM token
    await _registerForPushNotifications();

    // Start session validation timer after successful login
    _startSessionValidationTimer();
  }

  /// Register for push notifications and upload FCM token to server
  Future<void> _registerForPushNotifications() async {
    try {
      final messagingService = GetIt.instance<FirebaseMessagingService>();
      await messagingService.uploadTokenAfterLogin();
      log('📱 FCM token uploaded after login');
    } catch (e) {
      log('❌ Error uploading FCM token after login: $e');
      // Don't fail login if FCM token upload fails
    }
  }

  Future<void> logout() async {
    // Stop session validation timer
    _stopSessionValidationTimer();

    // Clear storage
    await _storageService.clearToken();
    await _storageService.clearUser();

    emit(const AuthUnauthenticated());
  }

  void setLoading() {
    emit(const AuthLoading());
  }

  void setError(String message) {
    emit(AuthError(message));
  }

  void updateProfile({
    String? name,
    String? email,
    String? role,
  }) {
    if (state is AuthAuthenticated) {
      final currentState = state as AuthAuthenticated;
      emit(currentState.copyWith(
        name: name,
        email: email,
        role: role,
      ));
    }
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      final type = json['type'] as String;
      switch (type) {
        case 'authenticated':
          return AuthAuthenticated(
            token: json['token'] as String,
            userId: json['userId'] as String,
            email: json['email'] as String,
            name: json['name'] as String,
            role: json['role'] as String?,
          );
        case 'unauthenticated':
          return const AuthUnauthenticated();
        case 'session_expired':
          return const AuthSessionExpired();
        default:
          return const AuthInitial();
      }
    } catch (_) {
      return const AuthInitial();
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    if (state is AuthAuthenticated) {
      return {
        'type': 'authenticated',
        'token': state.token,
        'userId': state.userId,
        'email': state.email,
        'name': state.name,
        'role': state.role,
      };
    } else if (state is AuthUnauthenticated) {
      return {'type': 'unauthenticated'};
    } else if (state is AuthSessionExpired) {
      return {'type': 'session_expired'};
    }
    return null;
  }

  @override
  Future<void> close() async {
    _stopSessionValidationTimer();
    return super.close();
  }
}
