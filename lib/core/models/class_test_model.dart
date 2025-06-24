import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'user_model.dart';

part 'class_test_model.freezed.dart';
part 'class_test_model.g.dart';

// Custom converter for Firestore Timestamps
class TimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? dateTime) {
    return dateTime != null ? Timestamp.fromDate(dateTime) : null;
  }
}

@freezed
class ClassTestModel with _$ClassTestModel {
  const factory ClassTestModel({
    required String title,
    required String subject,
    required String description,
    @TimestampConverter() required DateTime testDate,
    required String createdById,
    String? createdByName,
    UserRole? createdByRole,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    String? location,
    String? instructions,
  }) = _ClassTestModel;

  factory ClassTestModel.fromJson(Map<String, dynamic> json) => _$ClassTestModelFromJson(json);
}

// Collection reference using Firestore ODM
@Collection<ClassTestModel>('class_tests')
final classTestsRef = ClassTestModelCollectionReference();

@freezed
class CreateClassTestModel with _$CreateClassTestModel {
  const factory CreateClassTestModel({
    required String title,
    required String subject,
    required String description,
    required DateTime testDate,
    String? location,
    String? instructions,
  }) = _CreateClassTestModel;

  factory CreateClassTestModel.fromJson(Map<String, dynamic> json) => _$CreateClassTestModelFromJson(json);
}

@freezed
class UpdateClassTestModel with _$UpdateClassTestModel {
  const factory UpdateClassTestModel({
    String? title,
    String? subject,
    String? description,
    DateTime? testDate,
    String? location,
    String? instructions,
  }) = _UpdateClassTestModel;

  factory UpdateClassTestModel.fromJson(Map<String, dynamic> json) => _$UpdateClassTestModelFromJson(json);
}
