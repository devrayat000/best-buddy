// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassTestModel _$ClassTestModelFromJson(Map<String, dynamic> json) {
  return _ClassTestModel.fromJson(json);
}

/// @nodoc
mixin _$ClassTestModel {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get testDate => throw _privateConstructorUsedError;
  String get createdById => throw _privateConstructorUsedError;
  String? get createdByName => throw _privateConstructorUsedError;
  UserRole? get createdByRole => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;

  /// Serializes this ClassTestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassTestModelCopyWith<ClassTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassTestModelCopyWith<$Res> {
  factory $ClassTestModelCopyWith(
          ClassTestModel value, $Res Function(ClassTestModel) then) =
      _$ClassTestModelCopyWithImpl<$Res, ClassTestModel>;
  @useResult
  $Res call(
      {String? id,
      String title,
      String subject,
      String description,
      @TimestampConverter() DateTime testDate,
      String createdById,
      String? createdByName,
      UserRole? createdByRole,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      String? location,
      String? instructions});
}

/// @nodoc
class _$ClassTestModelCopyWithImpl<$Res, $Val extends ClassTestModel>
    implements $ClassTestModelCopyWith<$Res> {
  _$ClassTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? subject = null,
    Object? description = null,
    Object? testDate = null,
    Object? createdById = null,
    Object? createdByName = freezed,
    Object? createdByRole = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? location = freezed,
    Object? instructions = freezed,
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _value.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassTestModelImplCopyWith<$Res>
    implements $ClassTestModelCopyWith<$Res> {
  factory _$$ClassTestModelImplCopyWith(_$ClassTestModelImpl value,
          $Res Function(_$ClassTestModelImpl) then) =
      __$$ClassTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String subject,
      String description,
      @TimestampConverter() DateTime testDate,
      String createdById,
      String? createdByName,
      UserRole? createdByRole,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      String? location,
      String? instructions});
}

/// @nodoc
class __$$ClassTestModelImplCopyWithImpl<$Res>
    extends _$ClassTestModelCopyWithImpl<$Res, _$ClassTestModelImpl>
    implements _$$ClassTestModelImplCopyWith<$Res> {
  __$$ClassTestModelImplCopyWithImpl(
      _$ClassTestModelImpl _value, $Res Function(_$ClassTestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? subject = null,
    Object? description = null,
    Object? testDate = null,
    Object? createdById = null,
    Object? createdByName = freezed,
    Object? createdByRole = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$ClassTestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _value.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassTestModelImpl implements _ClassTestModel {
  const _$ClassTestModelImpl(
      {this.id,
      required this.title,
      required this.subject,
      required this.description,
      @TimestampConverter() required this.testDate,
      required this.createdById,
      this.createdByName,
      this.createdByRole,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      this.location,
      this.instructions});

  factory _$ClassTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassTestModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String subject;
  @override
  final String description;
  @override
  @TimestampConverter()
  final DateTime testDate;
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
  final String? location;
  @override
  final String? instructions;

  @override
  String toString() {
    return 'ClassTestModel(id: $id, title: $title, subject: $subject, description: $description, testDate: $testDate, createdById: $createdById, createdByName: $createdByName, createdByRole: $createdByRole, createdAt: $createdAt, updatedAt: $updatedAt, location: $location, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassTestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.testDate, testDate) ||
                other.testDate == testDate) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.createdByRole, createdByRole) ||
                other.createdByRole == createdByRole) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subject,
      description,
      testDate,
      createdById,
      createdByName,
      createdByRole,
      createdAt,
      updatedAt,
      location,
      instructions);

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassTestModelImplCopyWith<_$ClassTestModelImpl> get copyWith =>
      __$$ClassTestModelImplCopyWithImpl<_$ClassTestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassTestModelImplToJson(
      this,
    );
  }
}

abstract class _ClassTestModel implements ClassTestModel {
  const factory _ClassTestModel(
      {final String? id,
      required final String title,
      required final String subject,
      required final String description,
      @TimestampConverter() required final DateTime testDate,
      required final String createdById,
      final String? createdByName,
      final UserRole? createdByRole,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt,
      final String? location,
      final String? instructions}) = _$ClassTestModelImpl;

  factory _ClassTestModel.fromJson(Map<String, dynamic> json) =
      _$ClassTestModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get subject;
  @override
  String get description;
  @override
  @TimestampConverter()
  DateTime get testDate;
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
  @override
  String? get location;
  @override
  String? get instructions;

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassTestModelImplCopyWith<_$ClassTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateClassTestModel _$CreateClassTestModelFromJson(Map<String, dynamic> json) {
  return _CreateClassTestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateClassTestModel {
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get testDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;

  /// Serializes this CreateClassTestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateClassTestModelCopyWith<CreateClassTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClassTestModelCopyWith<$Res> {
  factory $CreateClassTestModelCopyWith(CreateClassTestModel value,
          $Res Function(CreateClassTestModel) then) =
      _$CreateClassTestModelCopyWithImpl<$Res, CreateClassTestModel>;
  @useResult
  $Res call(
      {String title,
      String subject,
      String description,
      DateTime testDate,
      String? location,
      String? instructions});
}

/// @nodoc
class _$CreateClassTestModelCopyWithImpl<$Res,
        $Val extends CreateClassTestModel>
    implements $CreateClassTestModelCopyWith<$Res> {
  _$CreateClassTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subject = null,
    Object? description = null,
    Object? testDate = null,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _value.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateClassTestModelImplCopyWith<$Res>
    implements $CreateClassTestModelCopyWith<$Res> {
  factory _$$CreateClassTestModelImplCopyWith(_$CreateClassTestModelImpl value,
          $Res Function(_$CreateClassTestModelImpl) then) =
      __$$CreateClassTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subject,
      String description,
      DateTime testDate,
      String? location,
      String? instructions});
}

/// @nodoc
class __$$CreateClassTestModelImplCopyWithImpl<$Res>
    extends _$CreateClassTestModelCopyWithImpl<$Res, _$CreateClassTestModelImpl>
    implements _$$CreateClassTestModelImplCopyWith<$Res> {
  __$$CreateClassTestModelImplCopyWithImpl(_$CreateClassTestModelImpl _value,
      $Res Function(_$CreateClassTestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subject = null,
    Object? description = null,
    Object? testDate = null,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$CreateClassTestModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _value.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateClassTestModelImpl implements _CreateClassTestModel {
  const _$CreateClassTestModelImpl(
      {required this.title,
      required this.subject,
      required this.description,
      required this.testDate,
      this.location,
      this.instructions});

  factory _$CreateClassTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateClassTestModelImplFromJson(json);

  @override
  final String title;
  @override
  final String subject;
  @override
  final String description;
  @override
  final DateTime testDate;
  @override
  final String? location;
  @override
  final String? instructions;

  @override
  String toString() {
    return 'CreateClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, location: $location, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClassTestModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.testDate, testDate) ||
                other.testDate == testDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subject, description,
      testDate, location, instructions);

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClassTestModelImplCopyWith<_$CreateClassTestModelImpl>
      get copyWith =>
          __$$CreateClassTestModelImplCopyWithImpl<_$CreateClassTestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClassTestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateClassTestModel implements CreateClassTestModel {
  const factory _CreateClassTestModel(
      {required final String title,
      required final String subject,
      required final String description,
      required final DateTime testDate,
      final String? location,
      final String? instructions}) = _$CreateClassTestModelImpl;

  factory _CreateClassTestModel.fromJson(Map<String, dynamic> json) =
      _$CreateClassTestModelImpl.fromJson;

  @override
  String get title;
  @override
  String get subject;
  @override
  String get description;
  @override
  DateTime get testDate;
  @override
  String? get location;
  @override
  String? get instructions;

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateClassTestModelImplCopyWith<_$CreateClassTestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateClassTestModel _$UpdateClassTestModelFromJson(Map<String, dynamic> json) {
  return _UpdateClassTestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateClassTestModel {
  String? get title => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get testDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;

  /// Serializes this UpdateClassTestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateClassTestModelCopyWith<UpdateClassTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClassTestModelCopyWith<$Res> {
  factory $UpdateClassTestModelCopyWith(UpdateClassTestModel value,
          $Res Function(UpdateClassTestModel) then) =
      _$UpdateClassTestModelCopyWithImpl<$Res, UpdateClassTestModel>;
  @useResult
  $Res call(
      {String? title,
      String? subject,
      String? description,
      DateTime? testDate,
      String? location,
      String? instructions});
}

/// @nodoc
class _$UpdateClassTestModelCopyWithImpl<$Res,
        $Val extends UpdateClassTestModel>
    implements $UpdateClassTestModelCopyWith<$Res> {
  _$UpdateClassTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? description = freezed,
    Object? testDate = freezed,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      testDate: freezed == testDate
          ? _value.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateClassTestModelImplCopyWith<$Res>
    implements $UpdateClassTestModelCopyWith<$Res> {
  factory _$$UpdateClassTestModelImplCopyWith(_$UpdateClassTestModelImpl value,
          $Res Function(_$UpdateClassTestModelImpl) then) =
      __$$UpdateClassTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? subject,
      String? description,
      DateTime? testDate,
      String? location,
      String? instructions});
}

/// @nodoc
class __$$UpdateClassTestModelImplCopyWithImpl<$Res>
    extends _$UpdateClassTestModelCopyWithImpl<$Res, _$UpdateClassTestModelImpl>
    implements _$$UpdateClassTestModelImplCopyWith<$Res> {
  __$$UpdateClassTestModelImplCopyWithImpl(_$UpdateClassTestModelImpl _value,
      $Res Function(_$UpdateClassTestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? description = freezed,
    Object? testDate = freezed,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$UpdateClassTestModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      testDate: freezed == testDate
          ? _value.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateClassTestModelImpl implements _UpdateClassTestModel {
  const _$UpdateClassTestModelImpl(
      {this.title,
      this.subject,
      this.description,
      this.testDate,
      this.location,
      this.instructions});

  factory _$UpdateClassTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateClassTestModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? subject;
  @override
  final String? description;
  @override
  final DateTime? testDate;
  @override
  final String? location;
  @override
  final String? instructions;

  @override
  String toString() {
    return 'UpdateClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, location: $location, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClassTestModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.testDate, testDate) ||
                other.testDate == testDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subject, description,
      testDate, location, instructions);

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClassTestModelImplCopyWith<_$UpdateClassTestModelImpl>
      get copyWith =>
          __$$UpdateClassTestModelImplCopyWithImpl<_$UpdateClassTestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateClassTestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateClassTestModel implements UpdateClassTestModel {
  const factory _UpdateClassTestModel(
      {final String? title,
      final String? subject,
      final String? description,
      final DateTime? testDate,
      final String? location,
      final String? instructions}) = _$UpdateClassTestModelImpl;

  factory _UpdateClassTestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateClassTestModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get subject;
  @override
  String? get description;
  @override
  DateTime? get testDate;
  @override
  String? get location;
  @override
  String? get instructions;

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClassTestModelImplCopyWith<_$UpdateClassTestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
