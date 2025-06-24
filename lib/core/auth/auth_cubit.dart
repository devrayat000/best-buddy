import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

import '../storage/storage_service.dart';
import '../services/firebase_notification_service.dart';
import 'firebase_auth_service.dart';
import 'auth_state.dart';
import '../models/user_model.dart';

export 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  final FirebaseAuthService _authService;
  final StorageService _storageService;
  final FirebaseNotificationService _notificationService;
  StreamSubscription<User?>? _authStateSubscription;

  AuthCubit(
    this._authService,
    this._storageService,
  ) : _notificationService = FirebaseNotificationService(),
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
            final token = await user.getIdToken();
            if (token != null) {
              emit(AuthAuthenticated(
                token: token,
                userId: user.uid,
                email: user.email!,
                name: userData.name,
                role: userData.role.name,
                isEmailVerified: user.emailVerified,
              ));

              // Initialize notifications for authenticated user
              await _notificationService.initialize();
            } else {
              emit(const AuthError('Failed to get authentication token'));
            }
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
          final token = await user.getIdToken();
          if (token != null) {
            emit(AuthAuthenticated(
              token: token,
              userId: user.uid,
              email: user.email!,
              name: userData.name,
              role: userData.role.name,
              isEmailVerified: user.emailVerified,
            ));
          }
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
