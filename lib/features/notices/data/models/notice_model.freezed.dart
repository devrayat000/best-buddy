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
  String get id;
  String get title;
  String get content;
  DateTime get createdAt;
  NoticeCreatedByModel get createdBy;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, createdAt, createdBy);

  @override
  String toString() {
    return 'NoticeModel(id: $id, title: $title, content: $content, createdAt: $createdAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) _then) =
      _$NoticeModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      DateTime createdAt,
      NoticeCreatedByModel createdBy});

  $NoticeCreatedByModelCopyWith<$Res> get createdBy;
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
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? createdBy = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as NoticeCreatedByModel,
    ));
  }

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeCreatedByModelCopyWith<$Res> get createdBy {
    return $NoticeCreatedByModelCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _NoticeModel implements NoticeModel {
  const _NoticeModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.createdAt,
      required this.createdBy});
  factory _NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final NoticeCreatedByModel createdBy;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, createdAt, createdBy);

  @override
  String toString() {
    return 'NoticeModel(id: $id, title: $title, content: $content, createdAt: $createdAt, createdBy: $createdBy)';
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
      {String id,
      String title,
      String content,
      DateTime createdAt,
      NoticeCreatedByModel createdBy});

  @override
  $NoticeCreatedByModelCopyWith<$Res> get createdBy;
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
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? createdBy = null,
  }) {
    return _then(_NoticeModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as NoticeCreatedByModel,
    ));
  }

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeCreatedByModelCopyWith<$Res> get createdBy {
    return $NoticeCreatedByModelCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
mixin _$NoticeCreatedByModel {
  String get name;
  String get role;

  /// Create a copy of NoticeCreatedByModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoticeCreatedByModelCopyWith<NoticeCreatedByModel> get copyWith =>
      _$NoticeCreatedByModelCopyWithImpl<NoticeCreatedByModel>(
          this as NoticeCreatedByModel, _$identity);

  /// Serializes this NoticeCreatedByModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoticeCreatedByModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, role);

  @override
  String toString() {
    return 'NoticeCreatedByModel(name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class $NoticeCreatedByModelCopyWith<$Res> {
  factory $NoticeCreatedByModelCopyWith(NoticeCreatedByModel value,
          $Res Function(NoticeCreatedByModel) _then) =
      _$NoticeCreatedByModelCopyWithImpl;
  @useResult
  $Res call({String name, String role});
}

/// @nodoc
class _$NoticeCreatedByModelCopyWithImpl<$Res>
    implements $NoticeCreatedByModelCopyWith<$Res> {
  _$NoticeCreatedByModelCopyWithImpl(this._self, this._then);

  final NoticeCreatedByModel _self;
  final $Res Function(NoticeCreatedByModel) _then;

  /// Create a copy of NoticeCreatedByModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NoticeCreatedByModel implements NoticeCreatedByModel {
  const _NoticeCreatedByModel({required this.name, required this.role});
  factory _NoticeCreatedByModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeCreatedByModelFromJson(json);

  @override
  final String name;
  @override
  final String role;

  /// Create a copy of NoticeCreatedByModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoticeCreatedByModelCopyWith<_NoticeCreatedByModel> get copyWith =>
      __$NoticeCreatedByModelCopyWithImpl<_NoticeCreatedByModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoticeCreatedByModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeCreatedByModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, role);

  @override
  String toString() {
    return 'NoticeCreatedByModel(name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$NoticeCreatedByModelCopyWith<$Res>
    implements $NoticeCreatedByModelCopyWith<$Res> {
  factory _$NoticeCreatedByModelCopyWith(_NoticeCreatedByModel value,
          $Res Function(_NoticeCreatedByModel) _then) =
      __$NoticeCreatedByModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String role});
}

/// @nodoc
class __$NoticeCreatedByModelCopyWithImpl<$Res>
    implements _$NoticeCreatedByModelCopyWith<$Res> {
  __$NoticeCreatedByModelCopyWithImpl(this._self, this._then);

  final _NoticeCreatedByModel _self;
  final $Res Function(_NoticeCreatedByModel) _then;

  /// Create a copy of NoticeCreatedByModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_NoticeCreatedByModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
