import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:get_it/get_it.dart';

import '../storage/storage_service.dart';

part 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(const AuthInitial());

  /// Initialize auth state and sync with storage
  Future<void> init() async {
    final currentState = state;
    if (currentState is AuthAuthenticated) {
      // Ensure token is in storage for GraphQL client
      final storedToken = await GetIt.instance<StorageService>().getToken();
      if (storedToken == null) {
        await GetIt.instance<StorageService>().setToken(currentState.token);
        await GetIt.instance<StorageService>().setUser({
          'id': currentState.userId,
          'email': currentState.email,
          'name': currentState.name,
          'role': currentState.role,
        });
      }
    }
  }

  Future<void> login({
    required String token,
    required String userId,
    required String email,
    required String name,
    String? role,
  }) async {
    // Save token to storage for GraphQL client
    await GetIt.instance<StorageService>().setToken(token);

    // Save user data to storage
    await GetIt.instance<StorageService>().setUser({
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
  }

  Future<void> logout() async {
    // Clear storage
    await GetIt.instance<StorageService>().clearToken();
    await GetIt.instance<StorageService>().clearUser();

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
    }
    return null;
  }
}
