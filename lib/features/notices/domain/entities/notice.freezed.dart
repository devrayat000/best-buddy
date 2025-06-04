// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notice {
  String get id;
  String get title;
  String get content;
  DateTime get createdAt;
  NoticeCreatedBy get createdBy;

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoticeCopyWith<Notice> get copyWith =>
      _$NoticeCopyWithImpl<Notice>(this as Notice, _$identity);

  /// Serializes this Notice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Notice &&
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
    return 'Notice(id: $id, title: $title, content: $content, createdAt: $createdAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) _then) =
      _$NoticeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      DateTime createdAt,
      NoticeCreatedBy createdBy});

  $NoticeCreatedByCopyWith<$Res> get createdBy;
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res> implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._self, this._then);

  final Notice _self;
  final $Res Function(Notice) _then;

  /// Create a copy of Notice
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
              as NoticeCreatedBy,
    ));
  }

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeCreatedByCopyWith<$Res> get createdBy {
    return $NoticeCreatedByCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Notice implements Notice {
  const _Notice(
      {required this.id,
      required this.title,
      required this.content,
      required this.createdAt,
      required this.createdBy});
  factory _Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final NoticeCreatedBy createdBy;

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoticeCopyWith<_Notice> get copyWith =>
      __$NoticeCopyWithImpl<_Notice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoticeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notice &&
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
    return 'Notice(id: $id, title: $title, content: $content, createdAt: $createdAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$NoticeCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$NoticeCopyWith(_Notice value, $Res Function(_Notice) _then) =
      __$NoticeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      DateTime createdAt,
      NoticeCreatedBy createdBy});

  @override
  $NoticeCreatedByCopyWith<$Res> get createdBy;
}

/// @nodoc
class __$NoticeCopyWithImpl<$Res> implements _$NoticeCopyWith<$Res> {
  __$NoticeCopyWithImpl(this._self, this._then);

  final _Notice _self;
  final $Res Function(_Notice) _then;

  /// Create a copy of Notice
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
    return _then(_Notice(
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
              as NoticeCreatedBy,
    ));
  }

  /// Create a copy of Notice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeCreatedByCopyWith<$Res> get createdBy {
    return $NoticeCreatedByCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
mixin _$NoticeCreatedBy {
  String get name;
  String get role;

  /// Create a copy of NoticeCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoticeCreatedByCopyWith<NoticeCreatedBy> get copyWith =>
      _$NoticeCreatedByCopyWithImpl<NoticeCreatedBy>(
          this as NoticeCreatedBy, _$identity);

  /// Serializes this NoticeCreatedBy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoticeCreatedBy &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, role);

  @override
  String toString() {
    return 'NoticeCreatedBy(name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class $NoticeCreatedByCopyWith<$Res> {
  factory $NoticeCreatedByCopyWith(
          NoticeCreatedBy value, $Res Function(NoticeCreatedBy) _then) =
      _$NoticeCreatedByCopyWithImpl;
  @useResult
  $Res call({String name, String role});
}

/// @nodoc
class _$NoticeCreatedByCopyWithImpl<$Res>
    implements $NoticeCreatedByCopyWith<$Res> {
  _$NoticeCreatedByCopyWithImpl(this._self, this._then);

  final NoticeCreatedBy _self;
  final $Res Function(NoticeCreatedBy) _then;

  /// Create a copy of NoticeCreatedBy
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
class _NoticeCreatedBy implements NoticeCreatedBy {
  const _NoticeCreatedBy({required this.name, required this.role});
  factory _NoticeCreatedBy.fromJson(Map<String, dynamic> json) =>
      _$NoticeCreatedByFromJson(json);

  @override
  final String name;
  @override
  final String role;

  /// Create a copy of NoticeCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoticeCreatedByCopyWith<_NoticeCreatedBy> get copyWith =>
      __$NoticeCreatedByCopyWithImpl<_NoticeCreatedBy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoticeCreatedByToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeCreatedBy &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, role);

  @override
  String toString() {
    return 'NoticeCreatedBy(name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$NoticeCreatedByCopyWith<$Res>
    implements $NoticeCreatedByCopyWith<$Res> {
  factory _$NoticeCreatedByCopyWith(
          _NoticeCreatedBy value, $Res Function(_NoticeCreatedBy) _then) =
      __$NoticeCreatedByCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String role});
}

/// @nodoc
class __$NoticeCreatedByCopyWithImpl<$Res>
    implements _$NoticeCreatedByCopyWith<$Res> {
  __$NoticeCreatedByCopyWithImpl(this._self, this._then);

  final _NoticeCreatedBy _self;
  final $Res Function(_NoticeCreatedBy) _then;

  /// Create a copy of NoticeCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_NoticeCreatedBy(
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
