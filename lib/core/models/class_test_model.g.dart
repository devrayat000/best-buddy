// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassTestModel _$ClassTestModelFromJson(Map<String, dynamic> json) =>
    _ClassTestModel(
      title: json['title'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      testDate: DateTime.parse(json['test_date'] as String),
      createdById: json['created_by_id'] as String,
      createdByName: json['created_by_name'] as String?,
      createdByRole:
          $enumDecodeNullable(_$UserRoleEnumMap, json['created_by_role']),
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as Timestamp?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as Timestamp?),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$ClassTestModelToJson(_ClassTestModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'test_date': instance.testDate.toIso8601String(),
      'created_by_id': instance.createdById,
      if (instance.createdByName case final value?) 'created_by_name': value,
      if (_$UserRoleEnumMap[instance.createdByRole] case final value?)
        'created_by_role': value,
      if (const TimestampConverter().toJson(instance.createdAt)
          case final value?)
        'created_at': value,
      if (const TimestampConverter().toJson(instance.updatedAt)
          case final value?)
        'updated_at': value,
      if (instance.location case final value?) 'location': value,
      if (instance.instructions case final value?) 'instructions': value,
    };

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.admin: 'admin',
  UserRole.teacher: 'teacher',
};

_CreateClassTestModel _$CreateClassTestModelFromJson(
        Map<String, dynamic> json) =>
    _CreateClassTestModel(
      title: json['title'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      testDate: DateTime.parse(json['test_date'] as String),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$CreateClassTestModelToJson(
        _CreateClassTestModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'test_date': instance.testDate.toIso8601String(),
      if (instance.location case final value?) 'location': value,
      if (instance.instructions case final value?) 'instructions': value,
    };

_UpdateClassTestModel _$UpdateClassTestModelFromJson(
        Map<String, dynamic> json) =>
    _UpdateClassTestModel(
      title: json['title'] as String?,
      subject: json['subject'] as String?,
      description: json['description'] as String?,
      testDate: json['test_date'] == null
          ? null
          : DateTime.parse(json['test_date'] as String),
      location: json['location'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$UpdateClassTestModelToJson(
        _UpdateClassTestModel instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.subject case final value?) 'subject': value,
      if (instance.description case final value?) 'description': value,
      if (instance.testDate?.toIso8601String() case final value?)
        'test_date': value,
      if (instance.location case final value?) 'location': value,
      if (instance.instructions case final value?) 'instructions': value,
    };
