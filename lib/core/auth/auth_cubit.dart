import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

import '../storage/storage_service.dart';
import '../services/firebase_notification_service.dart';
import 'firebase_auth_service.dart';
import 'biometric_service.dart';
import 'auth_state.dart';
import '../models/user_model.dart';

export 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  final FirebaseAuthService _authService;
  final StorageService _storageService;
  final FirebaseNotificationService _notificationService;
  final BiometricService _biometricService;
  StreamSubscription<User?>? _authStateSubscription;

  AuthCubit(
    this._authService,
    this._storageService,
  ) : _notificationService = FirebaseNotificationService(),
      _biometricService = BiometricService(),
      super(const AuthInitial());

  /// Initialize auth state and listen to Firebase Auth state changes
  Future<void> init() async {
    emit(const AuthLoading());

    // Listen to Firebase Auth state changes
    _authStateSubscription = _authService.authStateChanges.listen((user) async {
      if (user != null) {
        try {
          // Get user data from Firestore
          final userData = await _authService.getCurrentUserData();
          if (userData != null) {
            emit(AuthAuthenticated(
              token: await user.getIdToken(),
              userId: user.uid,
              email: user.email ?? '',
              name: userData.name,
              role: userData.role.name,
              isEmailVerified: user.emailVerified,
            ));

            // Initialize notifications for authenticated user
            await _notificationService.initialize();
          } else {
            emit(const AuthUnauthenticated());
          }
        } catch (e) {
          log('Error getting user data: $e');
          emit(AuthError('Failed to get user data: $e'));
        }
      } else {
        emit(const AuthUnauthenticated());
      }
    });

    // Initialize notification handling
    _notificationService.configureForegroundNotificationHandling();
    _notificationService.configureNotificationTapHandling();
    await _notificationService.getInitialMessage();
  }

  /// Sign in with email and password
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      emit(const AuthLoading());
      await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // State will be updated automatically via auth state listener
    } catch (e) {
      log('Sign in error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Sign up with email and password
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    UserRole role = UserRole.student,
  }) async {
    try {
      emit(const AuthLoading());
      await _authService.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
        role: role,
      );
      // State will be updated automatically via auth state listener
    } catch (e) {
      log('Sign up error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      emit(const AuthLoading());
      await _authService.signOut();
      await _storageService.clear();
      // State will be updated automatically via auth state listener
    } catch (e) {
      log('Sign out error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _authService.sendPasswordResetEmail(email);
    } catch (e) {
      log('Password reset error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Send email verification
  Future<void> sendEmailVerification() async {
    try {
      await _authService.sendEmailVerification();
    } catch (e) {
      log('Email verification error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Update user profile
  Future<void> updateUserProfile({
    String? name,
    String? photoUrl,
  }) async {
    try {
      await _authService.updateUserProfile(
        name: name,
        photoUrl: photoUrl,
      );
      // Refresh user data
      final user = _authService.currentUser;
      if (user != null) {
        final userData = await _authService.getCurrentUserData();
        if (userData != null) {
          emit(AuthAuthenticated(
            token: await user.getIdToken(),
            userId: user.uid,
            email: user.email ?? '',
            name: userData.name,
            role: userData.role.name,
            isEmailVerified: user.emailVerified,
          ));
        }
      }
    } catch (e) {
      log('Profile update error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Update user password
  Future<void> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await _authService.updatePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
    } catch (e) {
      log('Password update error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Check if current user is admin
  Future<bool> isCurrentUserAdmin() async {
    return await _authService.isCurrentUserAdmin();
  }

  /// Delete user account
  Future<void> deleteAccount() async {
    try {
      emit(const AuthLoading());
      await _authService.deleteAccount();
      await _storageService.clear();
      // State will be updated automatically via auth state listener
    } catch (e) {
      log('Account deletion error: $e');
      emit(AuthError(e.toString()));
    }
  }

  /// Enable biometric authentication
  Future<bool> enableBiometricAuth() async {
    try {
      final currentState = state;
      if (currentState is! AuthAuthenticated) return false;

      final isAvailable = await _biometricService.isBiometricAvailable();
      if (!isAvailable) return false;

      final isAuthenticated = await _biometricService.authenticateWithBiometrics();
      if (isAuthenticated) {
        await _storageService.setBiometricEnabled(true);
        // Store credentials securely for biometric sign-in
        await _storageService.setSecureCredentials(
          currentState.email,
          currentState.userId,
        );
        return true;
      }
      return false;
    } catch (e) {
      log('Biometric auth enable error: $e');
      return false;
    }
  }

  /// Disable biometric authentication
  Future<void> disableBiometricAuth() async {
    try {
      await _storageService.setBiometricEnabled(false);
      await _storageService.clearSecureCredentials();
    } catch (e) {
      log('Biometric auth disable error: $e');
    }
  }

  /// Sign in with biometrics
  Future<void> signInWithBiometrics() async {
    try {
      emit(const AuthLoading());

      final isBiometricEnabled = await _storageService.isBiometricEnabled();
      if (!isBiometricEnabled) {
        emit(const AuthError('Biometric authentication is not enabled'));
        return;
      }

      final isAuthenticated = await _biometricService.authenticateWithBiometrics();
      if (!isAuthenticated) {
        emit(const AuthError('Biometric authentication failed'));
        return;
      }

      final credentials = await _storageService.getSecureCredentials();
      if (credentials == null) {
        emit(const AuthError('No stored credentials found'));
        return;
      }

      // For biometric sign-in, we need to use the stored token or re-authenticate
      // Since Firebase doesn't store passwords, we'll need to handle this differently
      // For now, just validate the stored user ID matches current Firebase user
      final currentUser = _authService.currentUser;
      if (currentUser != null && currentUser.uid == credentials.userId) {
        final userData = await _authService.getCurrentUserData();
        if (userData != null) {
          emit(AuthAuthenticated(
            token: await currentUser.getIdToken(),
            userId: currentUser.uid,
            email: currentUser.email ?? '',
            name: userData.name,
            role: userData.role.name,
            isEmailVerified: currentUser.emailVerified,
          ));
        }
      } else {
        emit(const AuthError('Invalid biometric credentials'));
      }
    } catch (e) {
      log('Biometric sign in error: $e');
      emit(AuthError(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      final type = json['type'] as String?;
      switch (type) {
        case 'authenticated':
          return AuthAuthenticated(
            token: json['token'] as String,
            userId: json['userId'] as String,
            email: json['email'] as String,
            name: json['name'] as String,
            role: json['role'] as String?,
            isEmailVerified: json['isEmailVerified'] as bool? ?? false,
          );
        case 'unauthenticated':
          return const AuthUnauthenticated();
        case 'error':
          return AuthError(json['message'] as String);
        default:
          return const AuthInitial();
      }
    } catch (e) {
      return const AuthInitial();
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return switch (state) {
      AuthAuthenticated() => {
          'type': 'authenticated',
          'token': state.token,
          'userId': state.userId,
          'email': state.email,
          'name': state.name,
          'role': state.role,
          'isEmailVerified': state.isEmailVerified,
        },
      AuthUnauthenticated() => {'type': 'unauthenticated'},
      AuthError() => {'type': 'error', 'message': state.message},
      _ => null,
    };
  }
}

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
        name: name ?? currentState.name,
        email: email ?? currentState.email,
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
