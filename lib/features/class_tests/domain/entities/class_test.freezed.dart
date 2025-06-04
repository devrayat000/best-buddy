// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassTest {
  String get id;
  String get title;
  String get subject;
  DateTime get scheduledAt;
  String get teacherId;
  String get teacherName;
  String? get description;
  String? get syllabus;
  int? get duration; // in minutes
  int? get totalMarks;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of ClassTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassTestCopyWith<ClassTest> get copyWith =>
      _$ClassTestCopyWithImpl<ClassTest>(this as ClassTest, _$identity);

  /// Serializes this ClassTest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassTest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.syllabus, syllabus) ||
                other.syllabus == syllabus) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.totalMarks, totalMarks) ||
                other.totalMarks == totalMarks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subject,
      scheduledAt,
      teacherId,
      teacherName,
      description,
      syllabus,
      duration,
      totalMarks,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ClassTest(id: $id, title: $title, subject: $subject, scheduledAt: $scheduledAt, teacherId: $teacherId, teacherName: $teacherName, description: $description, syllabus: $syllabus, duration: $duration, totalMarks: $totalMarks, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ClassTestCopyWith<$Res> {
  factory $ClassTestCopyWith(ClassTest value, $Res Function(ClassTest) _then) =
      _$ClassTestCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String subject,
      DateTime scheduledAt,
      String teacherId,
      String teacherName,
      String? description,
      String? syllabus,
      int? duration,
      int? totalMarks,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ClassTestCopyWithImpl<$Res> implements $ClassTestCopyWith<$Res> {
  _$ClassTestCopyWithImpl(this._self, this._then);

  final ClassTest _self;
  final $Res Function(ClassTest) _then;

  /// Create a copy of ClassTest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subject = null,
    Object? scheduledAt = null,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? description = freezed,
    Object? syllabus = freezed,
    Object? duration = freezed,
    Object? totalMarks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      teacherId: null == teacherId
          ? _self.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      teacherName: null == teacherName
          ? _self.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      syllabus: freezed == syllabus
          ? _self.syllabus
          : syllabus // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMarks: freezed == totalMarks
          ? _self.totalMarks
          : totalMarks // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _ClassTest implements ClassTest {
  const _ClassTest(
      {required this.id,
      required this.title,
      required this.subject,
      required this.scheduledAt,
      required this.teacherId,
      required this.teacherName,
      this.description,
      this.syllabus,
      this.duration,
      this.totalMarks,
      this.createdAt,
      this.updatedAt});
  factory _ClassTest.fromJson(Map<String, dynamic> json) =>
      _$ClassTestFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subject;
  @override
  final DateTime scheduledAt;
  @override
  final String teacherId;
  @override
  final String teacherName;
  @override
  final String? description;
  @override
  final String? syllabus;
  @override
  final int? duration;
// in minutes
  @override
  final int? totalMarks;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of ClassTest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClassTestCopyWith<_ClassTest> get copyWith =>
      __$ClassTestCopyWithImpl<_ClassTest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClassTestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassTest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.syllabus, syllabus) ||
                other.syllabus == syllabus) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.totalMarks, totalMarks) ||
                other.totalMarks == totalMarks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subject,
      scheduledAt,
      teacherId,
      teacherName,
      description,
      syllabus,
      duration,
      totalMarks,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ClassTest(id: $id, title: $title, subject: $subject, scheduledAt: $scheduledAt, teacherId: $teacherId, teacherName: $teacherName, description: $description, syllabus: $syllabus, duration: $duration, totalMarks: $totalMarks, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ClassTestCopyWith<$Res>
    implements $ClassTestCopyWith<$Res> {
  factory _$ClassTestCopyWith(
          _ClassTest value, $Res Function(_ClassTest) _then) =
      __$ClassTestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subject,
      DateTime scheduledAt,
      String teacherId,
      String teacherName,
      String? description,
      String? syllabus,
      int? duration,
      int? totalMarks,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$ClassTestCopyWithImpl<$Res> implements _$ClassTestCopyWith<$Res> {
  __$ClassTestCopyWithImpl(this._self, this._then);

  final _ClassTest _self;
  final $Res Function(_ClassTest) _then;

  /// Create a copy of ClassTest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subject = null,
    Object? scheduledAt = null,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? description = freezed,
    Object? syllabus = freezed,
    Object? duration = freezed,
    Object? totalMarks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ClassTest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      teacherId: null == teacherId
          ? _self.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      teacherName: null == teacherName
          ? _self.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      syllabus: freezed == syllabus
          ? _self.syllabus
          : syllabus // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMarks: freezed == totalMarks
          ? _self.totalMarks
          : totalMarks // ignore: cast_nullable_to_non_nullable
              as int?,
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

// dart format on
