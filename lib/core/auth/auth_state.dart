import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

abstract class AuthState {
  const AuthState();
}

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class AuthInitial extends AuthState with _$AuthInitial {
  const AuthInitial._();
  const factory AuthInitial() = _AuthInitial;
}

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class AuthLoading extends AuthState with _$AuthLoading {
  const AuthLoading._();
  const factory AuthLoading() = _AuthLoading;
}

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class AuthAuthenticated extends AuthState with _$AuthAuthenticated {
  const AuthAuthenticated._();
  const factory AuthAuthenticated({
    required String token,
    required String userId,
    required String email,
    required String name,
    final String? role,
    @Default(false) bool isEmailVerified,
  }) = _AuthAuthenticated;
}

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class AuthUnauthenticated extends AuthState with _$AuthUnauthenticated {
  const AuthUnauthenticated._();
  const factory AuthUnauthenticated() = _AuthUnauthenticated;
}

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class AuthError extends AuthState with _$AuthError {
  const AuthError._();
  const factory AuthError(String message) = _AuthError;
}

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class AuthSessionExpired extends AuthState with _$AuthSessionExpired {
  const AuthSessionExpired._();
  const factory AuthSessionExpired() = _AuthSessionExpired;
}
