import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum UserRole {
  @JsonValue('student')
  student,
  @JsonValue('cr')
  cr,
}

@freezed
sealed class UserModel with _$UserModel {
  @JsonSerializable(
      explicitToJson: true, converters: [FirestoreDateTimeConverter()])
  const factory UserModel({
    @Id() required String id,
    required String name,
    required String email,
    @Default(UserRole.student) UserRole role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

// Collection reference using regular Firestore
@Collection<UserModel>('users')
final usersRef = UserModelCollectionReference();
