import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

// Explicitly import Firestore types for generated code
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart' 
    show DocumentSnapshot, SetOptions, SnapshotOptions, CollectionReference, 
         DocumentReference, GetOptions, FieldValue, Transaction, WriteBatch;

part 'user_model.freezed.dart';
part 'user_model.g.dart';

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

enum UserRole {
  @JsonValue('student')
  student,
  @JsonValue('cr')
  cr,
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id, 
    required String name,
    required String email,
    @Default(UserRole.student) UserRole role,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

// Collection reference using Firestore ODM
@Collection<UserModel>('users')
final usersRef = UserModelCollectionReference();
