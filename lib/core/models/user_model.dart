import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

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

// Custom converter for Firestore timestamp
class TimestampConverter implements JsonConverter<DateTime?, Object?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(Object? timestamp) {
    if (timestamp == null) return null;
    
    // Handle Firestore Timestamp objects
    if (timestamp is Map<String, dynamic>) {
      final seconds = timestamp['_seconds'] as int?;
      final nanoseconds = timestamp['_nanoseconds'] as int?;
      if (seconds != null) {
        return DateTime.fromMillisecondsSinceEpoch(
          seconds * 1000 + (nanoseconds ?? 0) ~/ 1000000,
        );
      }
    }
    
    // Handle ISO string
    if (timestamp is String) {
      return DateTime.parse(timestamp);
    }
    
    // Handle milliseconds since epoch
    if (timestamp is int) {
      return DateTime.fromMillisecondsSinceEpoch(timestamp);
    }
    
    return null;
  }

  @override
  Object? toJson(DateTime? date) {
    return date?.toIso8601String();
  }
}

// Collection reference using Firestore ODM
@Collection<UserModel>('users')
final usersRef = UserModelCollectionReference();
