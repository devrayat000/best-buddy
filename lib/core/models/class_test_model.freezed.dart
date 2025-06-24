// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassTestModel {
  String get title;
  String get subject;
  String get description;
  @TimestampConverter()
  DateTime get testDate;
  String get createdById;
  String? get createdByName;
  UserRole? get createdByRole;
  @TimestampConverter()
  DateTime? get createdAt;
  @TimestampConverter()
  DateTime? get updatedAt;
  String? get location;
  String? get instructions;

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassTestModelCopyWith<ClassTestModel> get copyWith =>
      _$ClassTestModelCopyWithImpl<ClassTestModel>(
          this as ClassTestModel, _$identity);

  /// Serializes this ClassTestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassTestModel &&
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

  @override
  String toString() {
    return 'ClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, createdById: $createdById, createdByName: $createdByName, createdByRole: $createdByRole, createdAt: $createdAt, updatedAt: $updatedAt, location: $location, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class $ClassTestModelCopyWith<$Res> {
  factory $ClassTestModelCopyWith(
          ClassTestModel value, $Res Function(ClassTestModel) _then) =
      _$ClassTestModelCopyWithImpl;
  @useResult
  $Res call(
      {String title,
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
class _$ClassTestModelCopyWithImpl<$Res>
    implements $ClassTestModelCopyWith<$Res> {
  _$ClassTestModelCopyWithImpl(this._self, this._then);

  final ClassTestModel _self;
  final $Res Function(ClassTestModel) _then;

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _self.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ClassTestModel implements ClassTestModel {
  const _ClassTestModel(
      {required this.title,
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
  factory _ClassTestModel.fromJson(Map<String, dynamic> json) =>
      _$ClassTestModelFromJson(json);

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

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClassTestModelCopyWith<_ClassTestModel> get copyWith =>
      __$ClassTestModelCopyWithImpl<_ClassTestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClassTestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassTestModel &&
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

  @override
  String toString() {
    return 'ClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, createdById: $createdById, createdByName: $createdByName, createdByRole: $createdByRole, createdAt: $createdAt, updatedAt: $updatedAt, location: $location, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class _$ClassTestModelCopyWith<$Res>
    implements $ClassTestModelCopyWith<$Res> {
  factory _$ClassTestModelCopyWith(
          _ClassTestModel value, $Res Function(_ClassTestModel) _then) =
      __$ClassTestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
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
class __$ClassTestModelCopyWithImpl<$Res>
    implements _$ClassTestModelCopyWith<$Res> {
  __$ClassTestModelCopyWithImpl(this._self, this._then);

  final _ClassTestModel _self;
  final $Res Function(_ClassTestModel) _then;

  /// Create a copy of ClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
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
    return _then(_ClassTestModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _self.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateClassTestModel {
  String get title;
  String get subject;
  String get description;
  DateTime get testDate;
  String? get location;
  String? get instructions;

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateClassTestModelCopyWith<CreateClassTestModel> get copyWith =>
      _$CreateClassTestModelCopyWithImpl<CreateClassTestModel>(
          this as CreateClassTestModel, _$identity);

  /// Serializes this CreateClassTestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateClassTestModel &&
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

  @override
  String toString() {
    return 'CreateClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, location: $location, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class $CreateClassTestModelCopyWith<$Res> {
  factory $CreateClassTestModelCopyWith(CreateClassTestModel value,
          $Res Function(CreateClassTestModel) _then) =
      _$CreateClassTestModelCopyWithImpl;
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
class _$CreateClassTestModelCopyWithImpl<$Res>
    implements $CreateClassTestModelCopyWith<$Res> {
  _$CreateClassTestModelCopyWithImpl(this._self, this._then);

  final CreateClassTestModel _self;
  final $Res Function(CreateClassTestModel) _then;

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
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _self.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateClassTestModel implements CreateClassTestModel {
  const _CreateClassTestModel(
      {required this.title,
      required this.subject,
      required this.description,
      required this.testDate,
      this.location,
      this.instructions});
  factory _CreateClassTestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateClassTestModelFromJson(json);

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

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateClassTestModelCopyWith<_CreateClassTestModel> get copyWith =>
      __$CreateClassTestModelCopyWithImpl<_CreateClassTestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateClassTestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateClassTestModel &&
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

  @override
  String toString() {
    return 'CreateClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, location: $location, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class _$CreateClassTestModelCopyWith<$Res>
    implements $CreateClassTestModelCopyWith<$Res> {
  factory _$CreateClassTestModelCopyWith(_CreateClassTestModel value,
          $Res Function(_CreateClassTestModel) _then) =
      __$CreateClassTestModelCopyWithImpl;
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
class __$CreateClassTestModelCopyWithImpl<$Res>
    implements _$CreateClassTestModelCopyWith<$Res> {
  __$CreateClassTestModelCopyWithImpl(this._self, this._then);

  final _CreateClassTestModel _self;
  final $Res Function(_CreateClassTestModel) _then;

  /// Create a copy of CreateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? subject = null,
    Object? description = null,
    Object? testDate = null,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_CreateClassTestModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      testDate: null == testDate
          ? _self.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UpdateClassTestModel {
  String? get title;
  String? get subject;
  String? get description;
  DateTime? get testDate;
  String? get location;
  String? get instructions;

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateClassTestModelCopyWith<UpdateClassTestModel> get copyWith =>
      _$UpdateClassTestModelCopyWithImpl<UpdateClassTestModel>(
          this as UpdateClassTestModel, _$identity);

  /// Serializes this UpdateClassTestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateClassTestModel &&
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

  @override
  String toString() {
    return 'UpdateClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, location: $location, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class $UpdateClassTestModelCopyWith<$Res> {
  factory $UpdateClassTestModelCopyWith(UpdateClassTestModel value,
          $Res Function(UpdateClassTestModel) _then) =
      _$UpdateClassTestModelCopyWithImpl;
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
class _$UpdateClassTestModelCopyWithImpl<$Res>
    implements $UpdateClassTestModelCopyWith<$Res> {
  _$UpdateClassTestModelCopyWithImpl(this._self, this._then);

  final UpdateClassTestModel _self;
  final $Res Function(UpdateClassTestModel) _then;

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
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      testDate: freezed == testDate
          ? _self.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateClassTestModel implements UpdateClassTestModel {
  const _UpdateClassTestModel(
      {this.title,
      this.subject,
      this.description,
      this.testDate,
      this.location,
      this.instructions});
  factory _UpdateClassTestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateClassTestModelFromJson(json);

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

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateClassTestModelCopyWith<_UpdateClassTestModel> get copyWith =>
      __$UpdateClassTestModelCopyWithImpl<_UpdateClassTestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateClassTestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateClassTestModel &&
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

  @override
  String toString() {
    return 'UpdateClassTestModel(title: $title, subject: $subject, description: $description, testDate: $testDate, location: $location, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class _$UpdateClassTestModelCopyWith<$Res>
    implements $UpdateClassTestModelCopyWith<$Res> {
  factory _$UpdateClassTestModelCopyWith(_UpdateClassTestModel value,
          $Res Function(_UpdateClassTestModel) _then) =
      __$UpdateClassTestModelCopyWithImpl;
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
class __$UpdateClassTestModelCopyWithImpl<$Res>
    implements _$UpdateClassTestModelCopyWith<$Res> {
  __$UpdateClassTestModelCopyWithImpl(this._self, this._then);

  final _UpdateClassTestModel _self;
  final $Res Function(_UpdateClassTestModel) _then;

  /// Create a copy of UpdateClassTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? description = freezed,
    Object? testDate = freezed,
    Object? location = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_UpdateClassTestModel(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      testDate: freezed == testDate
          ? _self.testDate
          : testDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
