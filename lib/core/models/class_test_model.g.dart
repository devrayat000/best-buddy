// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'class_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassTestModelImpl _$$ClassTestModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassTestModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      testDate: DateTime.parse(json['testDate'] as String),
      createdById: json['createdById'] as String,
      createdByName: json['createdByName'] as String?,
      createdByRole:
          $enumDecodeNullable(_$UserRoleEnumMap, json['createdByRole']),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp?),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

const _$$ClassTestModelImplFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'subject': 'subject',
  'description': 'description',
  'testDate': 'testDate',
  'createdById': 'createdById',
  'createdByName': 'createdByName',
  'createdByRole': 'createdByRole',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
  'location': 'location',
  'instructions': 'instructions',
};

// ignore: unused_element
abstract class _$$ClassTestModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String? instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? subject(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? testDate(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? createdById(String instance) => instance;
  // ignore: unused_element
  static Object? createdByName(String? instance) => instance;
  // ignore: unused_element
  static Object? createdByRole(UserRole? instance) =>
      _$UserRoleEnumMap[instance];
  // ignore: unused_element
  static Object? createdAt(DateTime? instance) =>
      const TimestampConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) =>
      const TimestampConverter().toJson(instance);
  // ignore: unused_element
  static Object? location(String? instance) => instance;
  // ignore: unused_element
  static Object? instructions(String? instance) => instance;
}

Map<String, dynamic> _$$ClassTestModelImplToJson(
        _$ClassTestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'testDate': instance.testDate.toIso8601String(),
      'createdById': instance.createdById,
      'createdByName': instance.createdByName,
      'createdByRole': _$UserRoleEnumMap[instance.createdByRole],
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'location': instance.location,
      'instructions': instance.instructions,
    };

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.cr: 'cr',
};

_$CreateClassTestModelImpl _$$CreateClassTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClassTestModelImpl(
      title: json['title'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      testDate: DateTime.parse(json['testDate'] as String),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

const _$$CreateClassTestModelImplFieldMap = <String, String>{
  'title': 'title',
  'subject': 'subject',
  'description': 'description',
  'testDate': 'testDate',
  'location': 'location',
  'instructions': 'instructions',
};

// ignore: unused_element
abstract class _$$CreateClassTestModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? subject(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? testDate(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? location(String? instance) => instance;
  // ignore: unused_element
  static Object? instructions(String? instance) => instance;
}

Map<String, dynamic> _$$CreateClassTestModelImplToJson(
        _$CreateClassTestModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'testDate': instance.testDate.toIso8601String(),
      'location': instance.location,
      'instructions': instance.instructions,
    };

_$UpdateClassTestModelImpl _$$UpdateClassTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClassTestModelImpl(
      title: json['title'] as String?,
      subject: json['subject'] as String?,
      description: json['description'] as String?,
      testDate: json['testDate'] == null
          ? null
          : DateTime.parse(json['testDate'] as String),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

const _$$UpdateClassTestModelImplFieldMap = <String, String>{
  'title': 'title',
  'subject': 'subject',
  'description': 'description',
  'testDate': 'testDate',
  'location': 'location',
  'instructions': 'instructions',
};

// ignore: unused_element
abstract class _$$UpdateClassTestModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? title(String? instance) => instance;
  // ignore: unused_element
  static Object? subject(String? instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? testDate(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? location(String? instance) => instance;
  // ignore: unused_element
  static Object? instructions(String? instance) => instance;
}

Map<String, dynamic> _$$UpdateClassTestModelImplToJson(
        _$UpdateClassTestModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'testDate': instance.testDate?.toIso8601String(),
      'location': instance.location,
      'instructions': instance.instructions,
    };
