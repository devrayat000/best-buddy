import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Get all users (stream for real-time updates)
  Stream<List<UserModel>> getAllUsers() {
    return _firestore
        .collection('users')
        .orderBy('name')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => UserModel.fromJson({
                  ...doc.data(),
                  'id': doc.id,
                }))
            .toList());
  }

  // Get all users (future for one-time fetch)
  Future<List<UserModel>> getAllUsersFuture() async {
    try {
      final snapshot = await _firestore
          .collection('users')
          .orderBy('name')
          .get();
      
      return snapshot.docs
          .map((doc) => UserModel.fromJson({
                ...doc.data(),
                'id': doc.id,
              }))
          .toList();
    } catch (e) {
      throw Exception('Failed to get users: $e');
    }
  }

  // Get users by role
  Stream<List<UserModel>> getUsersByRole(UserRole role) {
    return _firestore
        .collection('users')
        .where('role', isEqualTo: role.name)
        .orderBy('name')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => UserModel.fromJson({
                  ...doc.data(),
                  'id': doc.id,
                }))
            .toList());
  }

  // Get current user data
  Future<UserModel?> getCurrentUserData() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return null;

      final doc = await _firestore.collection('users').doc(user.uid).get();
      if (doc.exists) {
        return UserModel.fromJson({
          ...doc.data()!,
          'id': doc.id,
        });
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get current user data: $e');
    }
  }

  // Check if current user is CR
  Future<bool> isCurrentUserCR() async {
    try {
      final userData = await getCurrentUserData();
      return userData?.role == UserRole.cr;
    } catch (e) {
      return false;
    }
  }

  // Update user role (CR only)
  Future<void> updateUserRole(String userId, UserRole role) async {
    try {
      final currentUser = await getCurrentUserData();
      if (currentUser?.role != UserRole.cr) {
        throw Exception('Insufficient permissions. CR role required.');
      }

      await _firestore.collection('users').doc(userId).update({
        'role': role.name,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update user role: $e');
    }
  }

  // Get user count by role
  Future<Map<String, int>> getUserRoleStats() async {
    try {
      final allUsers = await getAllUsersFuture();
      final stats = <String, int>{
        'total': allUsers.length,
        'students': 0,
        'crs': 0,
      };

      for (final user in allUsers) {
        if (user.role == UserRole.student) {
          stats['students'] = (stats['students'] ?? 0) + 1;
        } else if (user.role == UserRole.cr) {
          stats['crs'] = (stats['crs'] ?? 0) + 1;
        }
      }

      return stats;
    } catch (e) {
      throw Exception('Failed to get user stats: $e');
    }
  }
}
