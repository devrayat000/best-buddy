import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/session.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required String role,
    String? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) => UserModel(
        id: user.id,
        name: user.name,
        email: user.email,
        role: user.role,
        createdAt: user.createdAt,
      );
}

extension UserModelX on UserModel {
  User toEntity() => User(
        id: id,
        name: name,
        email: email,
        role: role,
        createdAt: createdAt,
      );
}

@freezed
sealed class SessionModel with _$SessionModel {
  const factory SessionModel({
    required String token,
    required UserModel user,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);

  factory SessionModel.fromEntity(Session session) => SessionModel(
        token: session.token,
        user: UserModel.fromEntity(session.user),
      );
}

extension SessionModelX on SessionModel {
  Session toEntity() => Session(
        token: token,
        user: user.toEntity(),
      );
}
