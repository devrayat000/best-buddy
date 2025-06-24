// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthInitial {}

/// @nodoc
abstract class $AuthInitialCopyWith<$Res> {
  factory $AuthInitialCopyWith(
          AuthInitial value, $Res Function(AuthInitial) then) =
      _$AuthInitialCopyWithImpl<$Res, AuthInitial>;
}

/// @nodoc
class _$AuthInitialCopyWithImpl<$Res, $Val extends AuthInitial>
    implements $AuthInitialCopyWith<$Res> {
  _$AuthInitialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthInitial
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthInitialCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthInitial
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthInitialImpl extends _AuthInitial {
  const _$AuthInitialImpl() : super._();

  @override
  String toString() {
    return 'AuthInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthInitial extends AuthInitial {
  const factory _AuthInitial() = _$AuthInitialImpl;
  const _AuthInitial._() : super._();
}

/// @nodoc
mixin _$AuthLoading {}

/// @nodoc
abstract class $AuthLoadingCopyWith<$Res> {
  factory $AuthLoadingCopyWith(
          AuthLoading value, $Res Function(AuthLoading) then) =
      _$AuthLoadingCopyWithImpl<$Res, AuthLoading>;
}

/// @nodoc
class _$AuthLoadingCopyWithImpl<$Res, $Val extends AuthLoading>
    implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthLoading
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthLoadingCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthLoading
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLoadingImpl extends _AuthLoading {
  const _$AuthLoadingImpl() : super._();

  @override
  String toString() {
    return 'AuthLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthLoading extends AuthLoading {
  const factory _AuthLoading() = _$AuthLoadingImpl;
  const _AuthLoading._() : super._();
}

/// @nodoc
mixin _$AuthAuthenticated {
  String get token => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthAuthenticatedCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(
          AuthAuthenticated value, $Res Function(AuthAuthenticated) then) =
      _$AuthAuthenticatedCopyWithImpl<$Res, AuthAuthenticated>;
  @useResult
  $Res call(
      {String token,
      String userId,
      String email,
      String name,
      String? role,
      bool isEmailVerified});
}

/// @nodoc
class _$AuthAuthenticatedCopyWithImpl<$Res, $Val extends AuthAuthenticated>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    Object? isEmailVerified = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthAuthenticatedImplCopyWith<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  factory _$$AuthAuthenticatedImplCopyWith(_$AuthAuthenticatedImpl value,
          $Res Function(_$AuthAuthenticatedImpl) then) =
      __$$AuthAuthenticatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String userId,
      String email,
      String name,
      String? role,
      bool isEmailVerified});
}

/// @nodoc
class __$$AuthAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthAuthenticatedCopyWithImpl<$Res, _$AuthAuthenticatedImpl>
    implements _$$AuthAuthenticatedImplCopyWith<$Res> {
  __$$AuthAuthenticatedImplCopyWithImpl(_$AuthAuthenticatedImpl _value,
      $Res Function(_$AuthAuthenticatedImpl) _then)
      : super(_value, _then);

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
    Object? isEmailVerified = null,
  }) {
    return _then(_$AuthAuthenticatedImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthAuthenticatedImpl extends _AuthAuthenticated {
  const _$AuthAuthenticatedImpl(
      {required this.token,
      required this.userId,
      required this.email,
      required this.name,
      this.role,
      this.isEmailVerified = false})
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
  @override
  @JsonKey()
  final bool isEmailVerified;

  @override
  String toString() {
    return 'AuthAuthenticated(token: $token, userId: $userId, email: $email, name: $name, role: $role, isEmailVerified: $isEmailVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthenticatedImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, token, userId, email, name, role, isEmailVerified);

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthenticatedImplCopyWith<_$AuthAuthenticatedImpl> get copyWith =>
      __$$AuthAuthenticatedImplCopyWithImpl<_$AuthAuthenticatedImpl>(
          this, _$identity);
}

abstract class _AuthAuthenticated extends AuthAuthenticated {
  const factory _AuthAuthenticated(
      {required final String token,
      required final String userId,
      required final String email,
      required final String name,
      final String? role,
      final bool isEmailVerified}) = _$AuthAuthenticatedImpl;
  const _AuthAuthenticated._() : super._();

  @override
  String get token;
  @override
  String get userId;
  @override
  String get email;
  @override
  String get name;
  @override
  String? get role;
  @override
  bool get isEmailVerified;

  /// Create a copy of AuthAuthenticated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthAuthenticatedImplCopyWith<_$AuthAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthUnauthenticated {}

/// @nodoc
abstract class $AuthUnauthenticatedCopyWith<$Res> {
  factory $AuthUnauthenticatedCopyWith(
          AuthUnauthenticated value, $Res Function(AuthUnauthenticated) then) =
      _$AuthUnauthenticatedCopyWithImpl<$Res, AuthUnauthenticated>;
}

/// @nodoc
class _$AuthUnauthenticatedCopyWithImpl<$Res, $Val extends AuthUnauthenticated>
    implements $AuthUnauthenticatedCopyWith<$Res> {
  _$AuthUnauthenticatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUnauthenticated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthUnauthenticatedImplCopyWith<$Res> {
  factory _$$AuthUnauthenticatedImplCopyWith(_$AuthUnauthenticatedImpl value,
          $Res Function(_$AuthUnauthenticatedImpl) then) =
      __$$AuthUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthUnauthenticatedCopyWithImpl<$Res, _$AuthUnauthenticatedImpl>
    implements _$$AuthUnauthenticatedImplCopyWith<$Res> {
  __$$AuthUnauthenticatedImplCopyWithImpl(_$AuthUnauthenticatedImpl _value,
      $Res Function(_$AuthUnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUnauthenticated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthUnauthenticatedImpl extends _AuthUnauthenticated {
  const _$AuthUnauthenticatedImpl() : super._();

  @override
  String toString() {
    return 'AuthUnauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthUnauthenticated extends AuthUnauthenticated {
  const factory _AuthUnauthenticated() = _$AuthUnauthenticatedImpl;
  const _AuthUnauthenticated._() : super._();
}

/// @nodoc
mixin _$AuthError {
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthErrorCopyWith<AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) then) =
      _$AuthErrorCopyWithImpl<$Res, AuthError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res, $Val extends AuthError>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<$Res>
    implements $AuthErrorCopyWith<$Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl value, $Res Function(_$AuthErrorImpl) then) =
      __$$AuthErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$AuthErrorImpl>
    implements _$$AuthErrorImplCopyWith<$Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl _value, $Res Function(_$AuthErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorImpl extends _AuthError {
  const _$AuthErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      __$$AuthErrorImplCopyWithImpl<_$AuthErrorImpl>(this, _$identity);
}

abstract class _AuthError extends AuthError {
  const factory _AuthError(final String message) = _$AuthErrorImpl;
  const _AuthError._() : super._();

  @override
  String get message;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthSessionExpired {}

/// @nodoc
abstract class $AuthSessionExpiredCopyWith<$Res> {
  factory $AuthSessionExpiredCopyWith(
          AuthSessionExpired value, $Res Function(AuthSessionExpired) then) =
      _$AuthSessionExpiredCopyWithImpl<$Res, AuthSessionExpired>;
}

/// @nodoc
class _$AuthSessionExpiredCopyWithImpl<$Res, $Val extends AuthSessionExpired>
    implements $AuthSessionExpiredCopyWith<$Res> {
  _$AuthSessionExpiredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthSessionExpired
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthSessionExpiredImplCopyWith<$Res> {
  factory _$$AuthSessionExpiredImplCopyWith(_$AuthSessionExpiredImpl value,
          $Res Function(_$AuthSessionExpiredImpl) then) =
      __$$AuthSessionExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSessionExpiredImplCopyWithImpl<$Res>
    extends _$AuthSessionExpiredCopyWithImpl<$Res, _$AuthSessionExpiredImpl>
    implements _$$AuthSessionExpiredImplCopyWith<$Res> {
  __$$AuthSessionExpiredImplCopyWithImpl(_$AuthSessionExpiredImpl _value,
      $Res Function(_$AuthSessionExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthSessionExpired
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthSessionExpiredImpl extends _AuthSessionExpired {
  const _$AuthSessionExpiredImpl() : super._();

  @override
  String toString() {
    return 'AuthSessionExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSessionExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthSessionExpired extends AuthSessionExpired {
  const factory _AuthSessionExpired() = _$AuthSessionExpiredImpl;
  const _AuthSessionExpired._() : super._();
}
