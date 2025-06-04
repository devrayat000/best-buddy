// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) => _NoticeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: NoticeCreatedByModel.fromJson(
          json['created_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoticeModelToJson(_NoticeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy.toJson(),
    };

_NoticeCreatedByModel _$NoticeCreatedByModelFromJson(
        Map<String, dynamic> json) =>
    _NoticeCreatedByModel(
      name: json['name'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$NoticeCreatedByModelToJson(
        _NoticeCreatedByModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
    };
