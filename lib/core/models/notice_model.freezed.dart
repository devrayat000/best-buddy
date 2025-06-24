// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) {
  return _NoticeModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeModel {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdById => throw _privateConstructorUsedError;
  String? get createdByName => throw _privateConstructorUsedError;
  UserRole? get createdByRole => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this NoticeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res, NoticeModel>;
  @useResult
  $Res call(
      {String? id,
      String title,
      String content,
      String createdById,
      String? createdByName,
      UserRole? createdByRole,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res, $Val extends NoticeModel>
    implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? createdById = null,
    Object? createdByName = freezed,
    Object? createdByRole = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdById: null == createdById
          ? _value.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByRole: freezed == createdByRole
          ? _value.createdByRole
          : createdByRole // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeModelImplCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$$NoticeModelImplCopyWith(
          _$NoticeModelImpl value, $Res Function(_$NoticeModelImpl) then) =
      __$$NoticeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String content,
      String createdById,
      String? createdByName,
      UserRole? createdByRole,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$NoticeModelImplCopyWithImpl<$Res>
    extends _$NoticeModelCopyWithImpl<$Res, _$NoticeModelImpl>
    implements _$$NoticeModelImplCopyWith<$Res> {
  __$$NoticeModelImplCopyWithImpl(
      _$NoticeModelImpl _value, $Res Function(_$NoticeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? createdById = null,
    Object? createdByName = freezed,
    Object? createdByRole = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NoticeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdById: null == createdById
          ? _value.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      createdByName: freezed == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByRole: freezed == createdByRole
          ? _value.createdByRole
          : createdByRole // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeModelImpl implements _NoticeModel {
  const _$NoticeModelImpl(
      {this.id,
      required this.title,
      required this.content,
      required this.createdById,
      this.createdByName,
      this.createdByRole,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$NoticeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String createdById;
  @override
  final String? createdByName;
  @override
  final UserRole? createdByRole;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'NoticeModel(id: $id, title: $title, content: $content, createdById: $createdById, createdByName: $createdByName, createdByRole: $createdByRole, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.createdByRole, createdByRole) ||
                other.createdByRole == createdByRole) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createdById,
      createdByName, createdByRole, createdAt, updatedAt);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeModelImplCopyWith<_$NoticeModelImpl> get copyWith =>
      __$$NoticeModelImplCopyWithImpl<_$NoticeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeModelImplToJson(
      this,
    );
  }
}

abstract class _NoticeModel implements NoticeModel {
  const factory _NoticeModel(
      {final String? id,
      required final String title,
      required final String content,
      required final String createdById,
      final String? createdByName,
      final UserRole? createdByRole,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$NoticeModelImpl;

  factory _NoticeModel.fromJson(Map<String, dynamic> json) =
      _$NoticeModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get createdById;
  @override
  String? get createdByName;
  @override
  UserRole? get createdByRole;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeModelImplCopyWith<_$NoticeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateNoticeModel _$CreateNoticeModelFromJson(Map<String, dynamic> json) {
  return _CreateNoticeModel.fromJson(json);
}

/// @nodoc
mixin _$CreateNoticeModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CreateNoticeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateNoticeModelCopyWith<CreateNoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNoticeModelCopyWith<$Res> {
  factory $CreateNoticeModelCopyWith(
          CreateNoticeModel value, $Res Function(CreateNoticeModel) then) =
      _$CreateNoticeModelCopyWithImpl<$Res, CreateNoticeModel>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$CreateNoticeModelCopyWithImpl<$Res, $Val extends CreateNoticeModel>
    implements $CreateNoticeModelCopyWith<$Res> {
  _$CreateNoticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNoticeModelImplCopyWith<$Res>
    implements $CreateNoticeModelCopyWith<$Res> {
  factory _$$CreateNoticeModelImplCopyWith(_$CreateNoticeModelImpl value,
          $Res Function(_$CreateNoticeModelImpl) then) =
      __$$CreateNoticeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$CreateNoticeModelImplCopyWithImpl<$Res>
    extends _$CreateNoticeModelCopyWithImpl<$Res, _$CreateNoticeModelImpl>
    implements _$$CreateNoticeModelImplCopyWith<$Res> {
  __$$CreateNoticeModelImplCopyWithImpl(_$CreateNoticeModelImpl _value,
      $Res Function(_$CreateNoticeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$CreateNoticeModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNoticeModelImpl implements _CreateNoticeModel {
  const _$CreateNoticeModelImpl({required this.title, required this.content});

  factory _$CreateNoticeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNoticeModelImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'CreateNoticeModel(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNoticeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNoticeModelImplCopyWith<_$CreateNoticeModelImpl> get copyWith =>
      __$$CreateNoticeModelImplCopyWithImpl<_$CreateNoticeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNoticeModelImplToJson(
      this,
    );
  }
}

abstract class _CreateNoticeModel implements CreateNoticeModel {
  const factory _CreateNoticeModel(
      {required final String title,
      required final String content}) = _$CreateNoticeModelImpl;

  factory _CreateNoticeModel.fromJson(Map<String, dynamic> json) =
      _$CreateNoticeModelImpl.fromJson;

  @override
  String get title;
  @override
  String get content;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNoticeModelImplCopyWith<_$CreateNoticeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateNoticeModel _$UpdateNoticeModelFromJson(Map<String, dynamic> json) {
  return _UpdateNoticeModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateNoticeModel {
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this UpdateNoticeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateNoticeModelCopyWith<UpdateNoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNoticeModelCopyWith<$Res> {
  factory $UpdateNoticeModelCopyWith(
          UpdateNoticeModel value, $Res Function(UpdateNoticeModel) then) =
      _$UpdateNoticeModelCopyWithImpl<$Res, UpdateNoticeModel>;
  @useResult
  $Res call({String? title, String? content});
}

/// @nodoc
class _$UpdateNoticeModelCopyWithImpl<$Res, $Val extends UpdateNoticeModel>
    implements $UpdateNoticeModelCopyWith<$Res> {
  _$UpdateNoticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateNoticeModelImplCopyWith<$Res>
    implements $UpdateNoticeModelCopyWith<$Res> {
  factory _$$UpdateNoticeModelImplCopyWith(_$UpdateNoticeModelImpl value,
          $Res Function(_$UpdateNoticeModelImpl) then) =
      __$$UpdateNoticeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? content});
}

/// @nodoc
class __$$UpdateNoticeModelImplCopyWithImpl<$Res>
    extends _$UpdateNoticeModelCopyWithImpl<$Res, _$UpdateNoticeModelImpl>
    implements _$$UpdateNoticeModelImplCopyWith<$Res> {
  __$$UpdateNoticeModelImplCopyWithImpl(_$UpdateNoticeModelImpl _value,
      $Res Function(_$UpdateNoticeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$UpdateNoticeModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNoticeModelImpl implements _UpdateNoticeModel {
  const _$UpdateNoticeModelImpl({this.title, this.content});

  factory _$UpdateNoticeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateNoticeModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? content;

  @override
  String toString() {
    return 'UpdateNoticeModel(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoticeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoticeModelImplCopyWith<_$UpdateNoticeModelImpl> get copyWith =>
      __$$UpdateNoticeModelImplCopyWithImpl<_$UpdateNoticeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNoticeModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateNoticeModel implements UpdateNoticeModel {
  const factory _UpdateNoticeModel(
      {final String? title, final String? content}) = _$UpdateNoticeModelImpl;

  factory _UpdateNoticeModel.fromJson(Map<String, dynamic> json) =
      _$UpdateNoticeModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get content;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNoticeModelImplCopyWith<_$UpdateNoticeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
