// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthInitial {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthInitial()';
  }
}

/// @nodoc
class $AuthInitialCopyWith<$Res> {
  $AuthInitialCopyWith(AuthInitial _, $Res Function(AuthInitial) __);
}

/// @nodoc

class _AuthInitial extends AuthInitial {
  const _AuthInitial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthInitial()';
  }
}

/// @nodoc
class _$AuthInitialCopyWith<$Res> implements $AuthInitialCopyWith<$Res> {
  _$AuthInitialCopyWith(_AuthInitial _, $Res Function(_AuthInitial) __);
}

/// @nodoc
class __$AuthInitialCopyWithImpl<$Res> implements _$AuthInitialCopyWith<$Res> {
  __$AuthInitialCopyWithImpl(this._self, this._then);

  final _AuthInitial _self;
  final $Res Function(_AuthInitial) _then;
}

/// @nodoc
mixin _$AuthLoading {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthLoading()';
  }
}

/// @nodoc
class $AuthLoadingCopyWith<$Res> {
  $AuthLoadingCopyWith(AuthLoading _, $Res Function(AuthLoading) __);
}

/// @nodoc

class _AuthLoading extends AuthLoading {
  const _AuthLoading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthLoading()';
  }
}

/// @nodoc
class _$AuthLoadingCopyWith<$Res> implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWith(_AuthLoading _, $Res Function(_AuthLoading) __);
}

/// @nodoc
class __$AuthLoadingCopyWithImpl<$Res> implements _$AuthLoadingCopyWith<$Res> {
  __$AuthLoadingCopyWithImpl(this._self, this._then);

  final _AuthLoading _self;
  final $Res Function(_AuthLoading) _then;
}

/// @nodoc
mixin _$AuthAuthenticated {
  String get token;
  String get userId;
  String get email;
  String get name;
  String? get role;

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith =>
      _$AuthAuthenticatedCopyWithImpl<AuthAuthenticated>(
          this as AuthAuthenticated, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthAuthenticated &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, userId, email, name, role);

  @override
  String toString() {
    return 'AuthAuthenticated(token: $token, userId: $userId, email: $email, name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class $AuthAuthenticatedCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(
          AuthAuthenticated value, $Res Function(AuthAuthenticated) _then) =
      _$AuthAuthenticatedCopyWithImpl;
  @useResult
  $Res call(
      {String token, String userId, String email, String name, String? role});
}

/// @nodoc
class _$AuthAuthenticatedCopyWithImpl<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthAuthenticated _self;
  final $Res Function(AuthAuthenticated) _then;

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
    Object? email = null,
    Object? name = null,
    Object? role = freezed,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _AuthAuthenticated extends AuthAuthenticated {
  const _AuthAuthenticated(
      {required this.token,
      required this.userId,
      required this.email,
      required this.name,
      this.role})
      : super._();

  @override
  final String token;
  @override
  final String userId;
  @override
  final String email;
  @override
  final String name;
  @override
  final String? role;

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthAuthenticatedCopyWith<_AuthAuthenticated> get copyWith =>
      __$AuthAuthenticatedCopyWithImpl<_AuthAuthenticated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthAuthenticated &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, userId, email, name, role);

  @override
  String toString() {
    return 'AuthAuthenticated(token: $token, userId: $userId, email: $email, name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$AuthAuthenticatedCopyWith<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  factory _$AuthAuthenticatedCopyWith(
          _AuthAuthenticated value, $Res Function(_AuthAuthenticated) _then) =
      __$AuthAuthenticatedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String token, String userId, String email, String name, String? role});
}

/// @nodoc
class __$AuthAuthenticatedCopyWithImpl<$Res>
    implements _$AuthAuthenticatedCopyWith<$Res> {
  __$AuthAuthenticatedCopyWithImpl(this._self, this._then);

  final _AuthAuthenticated _self;
  final $Res Function(_AuthAuthenticated) _then;

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? userId = null,
    Object? email = null,
    Object? name = null,
    Object? role = freezed,
  }) {
    return _then(_AuthAuthenticated(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AuthUnauthenticated {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthUnauthenticated()';
  }
}

/// @nodoc
class $AuthUnauthenticatedCopyWith<$Res> {
  $AuthUnauthenticatedCopyWith(
      AuthUnauthenticated _, $Res Function(AuthUnauthenticated) __);
}

/// @nodoc

class _AuthUnauthenticated extends AuthUnauthenticated {
  const _AuthUnauthenticated() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthUnauthenticated()';
  }
}

/// @nodoc
class _$AuthUnauthenticatedCopyWith<$Res>
    implements $AuthUnauthenticatedCopyWith<$Res> {
  _$AuthUnauthenticatedCopyWith(
      _AuthUnauthenticated _, $Res Function(_AuthUnauthenticated) __);
}

/// @nodoc
class __$AuthUnauthenticatedCopyWithImpl<$Res>
    implements _$AuthUnauthenticatedCopyWith<$Res> {
  __$AuthUnauthenticatedCopyWithImpl(this._self, this._then);

  final _AuthUnauthenticated _self;
  final $Res Function(_AuthUnauthenticated) _then;
}

/// @nodoc
mixin _$AuthError {
  String get message;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this as AuthError, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthError(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) =
      _$AuthErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AuthError extends AuthError {
  const _AuthError(this.message) : super._();

  @override
  final String message;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthErrorCopyWith<_AuthError> get copyWith =>
      __$AuthErrorCopyWithImpl<_AuthError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$AuthErrorCopyWith<$Res>
    implements $AuthErrorCopyWith<$Res> {
  factory _$AuthErrorCopyWith(
          _AuthError value, $Res Function(_AuthError) _then) =
      __$AuthErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$AuthErrorCopyWithImpl<$Res> implements _$AuthErrorCopyWith<$Res> {
  __$AuthErrorCopyWithImpl(this._self, this._then);

  final _AuthError _self;
  final $Res Function(_AuthError) _then;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_AuthError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AuthSessionExpired {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthSessionExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthSessionExpired()';
  }
}

/// @nodoc
class $AuthSessionExpiredCopyWith<$Res> {
  $AuthSessionExpiredCopyWith(
      AuthSessionExpired _, $Res Function(AuthSessionExpired) __);
}

/// @nodoc

class _AuthSessionExpired extends AuthSessionExpired {
  const _AuthSessionExpired() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthSessionExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthSessionExpired()';
  }
}

/// @nodoc
class _$AuthSessionExpiredCopyWith<$Res>
    implements $AuthSessionExpiredCopyWith<$Res> {
  _$AuthSessionExpiredCopyWith(
      _AuthSessionExpired _, $Res Function(_AuthSessionExpired) __);
}

/// @nodoc
class __$AuthSessionExpiredCopyWithImpl<$Res>
    implements _$AuthSessionExpiredCopyWith<$Res> {
  __$AuthSessionExpiredCopyWithImpl(this._self, this._then);

  final _AuthSessionExpired _self;
  final $Res Function(_AuthSessionExpired) _then;
}

// dart format on
