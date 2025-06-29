import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

class UserModelDocumentReferenceConverter
    implements
        JsonConverter<UserModelDocumentReference,
            DocumentReference<Map<String, dynamic>>> {
  const UserModelDocumentReferenceConverter();

  @override
  UserModelDocumentReference fromJson(
      DocumentReference<Map<String, dynamic>> ref) {
    return usersRef.doc(ref.id);
  }

  @override
  DocumentReference<Map<String, dynamic>> toJson(
      UserModelDocumentReference reference) {
    return FirebaseFirestore.instance
        .collection(usersRef.path)
        .doc(reference.id);
  }
}

@freezed
abstract class NoticeModel with _$NoticeModel {
  @JsonSerializable(explicitToJson: true, converters: [
    FirestoreDateTimeConverter(),
    UserModelDocumentReferenceConverter(),
  ])
  const factory NoticeModel({
    @Id() required String id,
    required String title,
    required String content,
    @JsonKey(includeToJson: false)
    required UserModelDocumentReference createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);
}

// Collection reference using regular Firestore
// @Collection<UserModel>('notices/*/createdBy')
@Collection<NoticeModel>('notices')
final noticeRef = NoticeModelCollectionReference();

@freezed
abstract class CreateNoticeModel with _$CreateNoticeModel {
  const factory CreateNoticeModel({
    required String title,
    required String content,
  }) = _CreateNoticeModel;

  factory CreateNoticeModel.fromJson(Map<String, dynamic> json) =>
      _$CreateNoticeModelFromJson(json);
}

@freezed
abstract class UpdateNoticeModel with _$UpdateNoticeModel {
  const factory UpdateNoticeModel({
    String? title,
    String? content,
  }) = _UpdateNoticeModel;

  factory UpdateNoticeModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateNoticeModelFromJson(json);
}
