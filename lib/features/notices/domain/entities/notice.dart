import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
sealed class Notice with _$Notice {
  const factory Notice({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    required NoticeCreatedBy createdBy,
  }) = _Notice;

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}

@freezed
sealed class NoticeCreatedBy with _$NoticeCreatedBy {
  const factory NoticeCreatedBy({
    required String name,
    required String role,
  }) = _NoticeCreatedBy;

  factory NoticeCreatedBy.fromJson(Map<String, dynamic> json) =>
      _$NoticeCreatedByFromJson(json);
}
