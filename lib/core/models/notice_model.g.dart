// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeModelImpl _$$NoticeModelImplFromJson(Map<String, dynamic> json) =>
    _$NoticeModelImpl(
      id: json['id'] as String?,
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

Map<String, dynamic> _$$NoticeModelImplToJson(_$NoticeModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
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
  UserRole.cr: 'cr',
};

_$CreateNoticeModelImpl _$$CreateNoticeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNoticeModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CreateNoticeModelImplToJson(
        _$CreateNoticeModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

_$UpdateNoticeModelImpl _$$UpdateNoticeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateNoticeModelImpl(
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$UpdateNoticeModelImplToJson(
        _$UpdateNoticeModelImpl instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.content case final value?) 'content': value,
    };
