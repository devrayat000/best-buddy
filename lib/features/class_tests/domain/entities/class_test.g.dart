// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassTest _$ClassTestFromJson(Map<String, dynamic> json) => _ClassTest(
      id: json['id'] as String,
      title: json['title'] as String,
      subject: json['subject'] as String,
      scheduledAt: DateTime.parse(json['scheduled_at'] as String),
      teacherId: json['teacher_id'] as String,
      teacherName: json['teacher_name'] as String,
      description: json['description'] as String?,
      syllabus: json['syllabus'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      totalMarks: (json['total_marks'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ClassTestToJson(_ClassTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subject': instance.subject,
      'scheduled_at': instance.scheduledAt.toIso8601String(),
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
      if (instance.description case final value?) 'description': value,
      if (instance.syllabus case final value?) 'syllabus': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.totalMarks case final value?) 'total_marks': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };
