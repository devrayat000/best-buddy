import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/notice.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

@freezed
sealed class NoticeModel with _$NoticeModel {
  const factory NoticeModel({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    required NoticeCreatedByModel createdBy,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);
}

@freezed
sealed class NoticeCreatedByModel with _$NoticeCreatedByModel {
  const factory NoticeCreatedByModel({
    required String name,
    required String role,
  }) = _NoticeCreatedByModel;

  factory NoticeCreatedByModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeCreatedByModelFromJson(json);
}

extension NoticeModelX on NoticeModel {
  Notice toEntity() {
    return Notice(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
      createdBy: NoticeCreatedBy(
        name: createdBy.name,
        role: createdBy.role,
      ),
    );
  }
}
