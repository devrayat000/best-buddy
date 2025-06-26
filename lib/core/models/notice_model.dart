import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'user_model.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

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
abstract class NoticeModel with _$NoticeModel {
  const factory NoticeModel({
    String? id,
    required String title,
    required String content,
    required String createdById,
    String? createdByName,
    UserRole? createdByRole,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) => _$NoticeModelFromJson(json);
}

// Collection reference using regular Firestore
final noticesRef = FirebaseFirestore.instance.collection('notices').withConverter<NoticeModel>(
  fromFirestore: (snapshot, _) => NoticeModel.fromJson(snapshot.data()!),
  toFirestore: (notice, _) => notice.toJson(),
);

@freezed
abstract class CreateNoticeModel with _$CreateNoticeModel {
  const factory CreateNoticeModel({
    required String title,
    required String content,
  }) = _CreateNoticeModel;

  factory CreateNoticeModel.fromJson(Map<String, dynamic> json) => _$CreateNoticeModelFromJson(json);
}

@freezed
abstract class UpdateNoticeModel with _$UpdateNoticeModel {
  const factory UpdateNoticeModel({
    String? title,
    String? content,
  }) = _UpdateNoticeModel;

  factory UpdateNoticeModel.fromJson(Map<String, dynamic> json) => _$UpdateNoticeModelFromJson(json);
}
