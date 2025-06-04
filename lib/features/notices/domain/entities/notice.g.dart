// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notice _$NoticeFromJson(Map<String, dynamic> json) => _Notice(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy:
          NoticeCreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoticeToJson(_Notice instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy.toJson(),
    };

_NoticeCreatedBy _$NoticeCreatedByFromJson(Map<String, dynamic> json) =>
    _NoticeCreatedBy(
      name: json['name'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$NoticeCreatedByToJson(_NoticeCreatedBy instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
    };
