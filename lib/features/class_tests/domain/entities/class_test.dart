import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_test.freezed.dart';
part 'class_test.g.dart';

@freezed
sealed class ClassTest with _$ClassTest {
  const factory ClassTest({
    required String id,
    required String title,
    required String subject,
    required DateTime scheduledAt,
    required String teacherId,
    required String teacherName,
    String? description,
    String? syllabus,
    int? duration, // in minutes
    int? totalMarks,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ClassTest;

  factory ClassTest.fromJson(Map<String, dynamic> json) =>
      _$ClassTestFromJson(json);
}
