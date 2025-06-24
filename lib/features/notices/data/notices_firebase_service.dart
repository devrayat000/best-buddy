import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/models/notice_model.dart';
import '../../../core/models/user_model.dart';

class NoticesFirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CollectionReference get _noticesCollection => _firestore.collection('notices');

  // Get all notices ordered by creation date (newest first)
  Stream<List<NoticeModel>> getNotices() {
    return _noticesCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => NoticeModel.fromJson({
                  ...doc.data() as Map<String, dynamic>,
                  'id': doc.id,
                }))
            .toList());
  }

  // Get a specific notice by ID
  Future<NoticeModel?> getNoticeById(String id) async {
    try {
      final doc = await _noticesCollection.doc(id).get();
      if (doc.exists) {
        return NoticeModel.fromJson({
          ...doc.data() as Map<String, dynamic>,
          'id': doc.id,
        });
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get notice: $e');
    }
  }

  // Create a new notice (admin only)
  Future<String> createNotice(CreateNoticeModel notice) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      // Get user role from Firestore
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'admin') {
        throw Exception('Insufficient permissions. Admin role required.');
      }

      final now = DateTime.now();
      final noticeData = {
        'title': notice.title,
        'content': notice.content,
        'createdById': user.uid,
        'createdByName': userData?['name'] ?? user.displayName ?? 'Unknown',
        'createdByRole': UserRole.admin.name,
        'createdAt': Timestamp.fromDate(now),
        'updatedAt': Timestamp.fromDate(now),
      };

      final docRef = await _noticesCollection.add(noticeData);
      return docRef.id;
    } catch (e) {
      throw Exception('Failed to create notice: $e');
    }
  }

  // Update an existing notice (admin only)
  Future<void> updateNotice(String id, UpdateNoticeModel notice) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      // Get user role from Firestore
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'admin') {
        throw Exception('Insufficient permissions. Admin role required.');
      }

      final updateData = <String, dynamic>{
        'updatedAt': Timestamp.fromDate(DateTime.now()),
      };

      if (notice.title != null) updateData['title'] = notice.title;
      if (notice.content != null) updateData['content'] = notice.content;

      await _noticesCollection.doc(id).update(updateData);
    } catch (e) {
      throw Exception('Failed to update notice: $e');
    }
  }

  // Delete a notice (admin only)
  Future<void> deleteNotice(String id) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      // Get user role from Firestore
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'admin') {
        throw Exception('Insufficient permissions. Admin role required.');
      }

      await _noticesCollection.doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete notice: $e');
    }
  }

  // Check if current user is admin
  Future<bool> isCurrentUserAdmin() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return false;

      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      return userData?['role'] == 'admin';
    } catch (e) {
      return false;
    }
  }
}
