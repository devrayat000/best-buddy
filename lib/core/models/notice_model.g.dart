// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) => _NoticeModel(
      title: json['title'] as String,
      content: json['content'] as String,
      createdById: json['created_by_id'] as String,
      createdByName: json['created_by_name'] as String?,
      createdByRole:
          $enumDecodeNullable(_$UserRoleEnumMap, json['created_by_role']),
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as Timestamp?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as Timestamp?),
    );

Map<String, dynamic> _$NoticeModelToJson(_NoticeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
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
    };

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.admin: 'admin',
  UserRole.teacher: 'teacher',
};

_CreateNoticeModel _$CreateNoticeModelFromJson(Map<String, dynamic> json) =>
    _CreateNoticeModel(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$CreateNoticeModelToJson(_CreateNoticeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

_UpdateNoticeModel _$UpdateNoticeModelFromJson(Map<String, dynamic> json) =>
    _UpdateNoticeModel(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$UpdateNoticeModelToJson(_UpdateNoticeModel instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.content case final value?) 'content': value,
    };
