part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthAuthenticated extends AuthState {
  const AuthAuthenticated({
    required this.token,
    required this.userId,
    required this.email,
    required this.name,
    this.role,
  });

  final String token;
  final String userId;
  final String email;
  final String name;
  final String? role;

  AuthAuthenticated copyWith({
    String? token,
    String? userId,
    String? email,
    String? name,
    String? role,
  }) {
    return AuthAuthenticated(
      token: token ?? this.token,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      name: name ?? this.name,
      role: role ?? this.role,
    );
  }

  @override
  List<Object?> get props => [token, userId, email, name, role];
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class AuthSessionExpired extends AuthState {
  const AuthSessionExpired();
}
