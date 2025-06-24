// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoticeModel {
  String get title;
  String get content;
  String get createdById;
  String? get createdByName;
  UserRole? get createdByRole;
  @TimestampConverter()
  DateTime? get createdAt;
  @TimestampConverter()
  DateTime? get updatedAt;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      _$NoticeModelCopyWithImpl<NoticeModel>(this as NoticeModel, _$identity);

  /// Serializes this NoticeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoticeModel &&
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
  int get hashCode => Object.hash(runtimeType, title, content, createdById,
      createdByName, createdByRole, createdAt, updatedAt);

  @override
  String toString() {
    return 'NoticeModel(title: $title, content: $content, createdById: $createdById, createdByName: $createdByName, createdByRole: $createdByRole, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) _then) =
      _$NoticeModelCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String content,
      String createdById,
      String? createdByName,
      UserRole? createdByRole,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res> implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._self, this._then);

  final NoticeModel _self;
  final $Res Function(NoticeModel) _then;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? createdById = null,
    Object? createdByName = freezed,
    Object? createdByRole = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdById: null == createdById
          ? _self.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      createdByName: freezed == createdByName
          ? _self.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByRole: freezed == createdByRole
          ? _self.createdByRole
          : createdByRole // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NoticeModel implements NoticeModel {
  const _NoticeModel(
      {required this.title,
      required this.content,
      required this.createdById,
      this.createdByName,
      this.createdByRole,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});
  factory _NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);

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

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoticeModelCopyWith<_NoticeModel> get copyWith =>
      __$NoticeModelCopyWithImpl<_NoticeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoticeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeModel &&
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
  int get hashCode => Object.hash(runtimeType, title, content, createdById,
      createdByName, createdByRole, createdAt, updatedAt);

  @override
  String toString() {
    return 'NoticeModel(title: $title, content: $content, createdById: $createdById, createdByName: $createdByName, createdByRole: $createdByRole, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$NoticeModelCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$NoticeModelCopyWith(
          _NoticeModel value, $Res Function(_NoticeModel) _then) =
      __$NoticeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      String createdById,
      String? createdByName,
      UserRole? createdByRole,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$NoticeModelCopyWithImpl<$Res> implements _$NoticeModelCopyWith<$Res> {
  __$NoticeModelCopyWithImpl(this._self, this._then);

  final _NoticeModel _self;
  final $Res Function(_NoticeModel) _then;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? createdById = null,
    Object? createdByName = freezed,
    Object? createdByRole = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_NoticeModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdById: null == createdById
          ? _self.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      createdByName: freezed == createdByName
          ? _self.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByRole: freezed == createdByRole
          ? _self.createdByRole
          : createdByRole // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$CreateNoticeModel {
  String get title;
  String get content;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateNoticeModelCopyWith<CreateNoticeModel> get copyWith =>
      _$CreateNoticeModelCopyWithImpl<CreateNoticeModel>(
          this as CreateNoticeModel, _$identity);

  /// Serializes this CreateNoticeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateNoticeModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @override
  String toString() {
    return 'CreateNoticeModel(title: $title, content: $content)';
  }
}

/// @nodoc
abstract mixin class $CreateNoticeModelCopyWith<$Res> {
  factory $CreateNoticeModelCopyWith(
          CreateNoticeModel value, $Res Function(CreateNoticeModel) _then) =
      _$CreateNoticeModelCopyWithImpl;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$CreateNoticeModelCopyWithImpl<$Res>
    implements $CreateNoticeModelCopyWith<$Res> {
  _$CreateNoticeModelCopyWithImpl(this._self, this._then);

  final CreateNoticeModel _self;
  final $Res Function(CreateNoticeModel) _then;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateNoticeModel implements CreateNoticeModel {
  const _CreateNoticeModel({required this.title, required this.content});
  factory _CreateNoticeModel.fromJson(Map<String, dynamic> json) =>
      _$CreateNoticeModelFromJson(json);

  @override
  final String title;
  @override
  final String content;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateNoticeModelCopyWith<_CreateNoticeModel> get copyWith =>
      __$CreateNoticeModelCopyWithImpl<_CreateNoticeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateNoticeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateNoticeModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @override
  String toString() {
    return 'CreateNoticeModel(title: $title, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$CreateNoticeModelCopyWith<$Res>
    implements $CreateNoticeModelCopyWith<$Res> {
  factory _$CreateNoticeModelCopyWith(
          _CreateNoticeModel value, $Res Function(_CreateNoticeModel) _then) =
      __$CreateNoticeModelCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$CreateNoticeModelCopyWithImpl<$Res>
    implements _$CreateNoticeModelCopyWith<$Res> {
  __$CreateNoticeModelCopyWithImpl(this._self, this._then);

  final _CreateNoticeModel _self;
  final $Res Function(_CreateNoticeModel) _then;

  /// Create a copy of CreateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_CreateNoticeModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UpdateNoticeModel {
  String? get title;
  String? get content;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateNoticeModelCopyWith<UpdateNoticeModel> get copyWith =>
      _$UpdateNoticeModelCopyWithImpl<UpdateNoticeModel>(
          this as UpdateNoticeModel, _$identity);

  /// Serializes this UpdateNoticeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateNoticeModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @override
  String toString() {
    return 'UpdateNoticeModel(title: $title, content: $content)';
  }
}

/// @nodoc
abstract mixin class $UpdateNoticeModelCopyWith<$Res> {
  factory $UpdateNoticeModelCopyWith(
          UpdateNoticeModel value, $Res Function(UpdateNoticeModel) _then) =
      _$UpdateNoticeModelCopyWithImpl;
  @useResult
  $Res call({String? title, String? content});
}

/// @nodoc
class _$UpdateNoticeModelCopyWithImpl<$Res>
    implements $UpdateNoticeModelCopyWith<$Res> {
  _$UpdateNoticeModelCopyWithImpl(this._self, this._then);

  final UpdateNoticeModel _self;
  final $Res Function(UpdateNoticeModel) _then;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateNoticeModel implements UpdateNoticeModel {
  const _UpdateNoticeModel({this.title, this.content});
  factory _UpdateNoticeModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateNoticeModelFromJson(json);

  @override
  final String? title;
  @override
  final String? content;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateNoticeModelCopyWith<_UpdateNoticeModel> get copyWith =>
      __$UpdateNoticeModelCopyWithImpl<_UpdateNoticeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateNoticeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateNoticeModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @override
  String toString() {
    return 'UpdateNoticeModel(title: $title, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$UpdateNoticeModelCopyWith<$Res>
    implements $UpdateNoticeModelCopyWith<$Res> {
  factory _$UpdateNoticeModelCopyWith(
          _UpdateNoticeModel value, $Res Function(_UpdateNoticeModel) _then) =
      __$UpdateNoticeModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? title, String? content});
}

/// @nodoc
class __$UpdateNoticeModelCopyWithImpl<$Res>
    implements _$UpdateNoticeModelCopyWith<$Res> {
  __$UpdateNoticeModelCopyWithImpl(this._self, this._then);

  final _UpdateNoticeModel _self;
  final $Res Function(_UpdateNoticeModel) _then;

  /// Create a copy of UpdateNoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_UpdateNoticeModel(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
