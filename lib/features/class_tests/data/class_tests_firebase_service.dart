import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/models/class_test_model.dart';
import '../../../core/models/user_model.dart';

class ClassTestsFirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CollectionReference get _classTestsCollection => _firestore.collection('class_tests');

  // Get all class tests ordered by test date
  Stream<List<ClassTestModel>> getClassTests() {
    return _classTestsCollection
        .orderBy('testDate', descending: false)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ClassTestModel.fromJson({
                  ...doc.data() as Map<String, dynamic>,
                  'id': doc.id,
                }))
            .toList());
  }

  // Get upcoming class tests (test date >= today)
  Stream<List<ClassTestModel>> getUpcomingClassTests() {
    final today = DateTime.now();
    final startOfDay = DateTime(today.year, today.month, today.day);

    return _classTestsCollection
        .where('testDate', isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay))
        .orderBy('testDate', descending: false)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ClassTestModel.fromJson({
                  ...doc.data() as Map<String, dynamic>,
                  'id': doc.id,
                }))
            .toList());
  }

  // Get class tests by subject
  Stream<List<ClassTestModel>> getClassTestsBySubject(String subject) {
    return _classTestsCollection
        .where('subject', isEqualTo: subject)
        .orderBy('testDate', descending: false)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ClassTestModel.fromJson({
                  ...doc.data() as Map<String, dynamic>,
                  'id': doc.id,
                }))
            .toList());
  }

  // Get a specific class test by ID
  Future<ClassTestModel?> getClassTestById(String id) async {
    try {
      final doc = await _classTestsCollection.doc(id).get();
      if (doc.exists) {
        return ClassTestModel.fromJson({
          ...doc.data() as Map<String, dynamic>,
          'id': doc.id,
        });
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get class test: $e');
    }
  }

  // Create a new class test (cr only)
  Future<String> createClassTest(CreateClassTestModel classTest) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      // Get user role from Firestore
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'cr') {
        throw Exception('Insufficient permissions. CR role required.');
      }

      final now = DateTime.now();
      final classTestData = {
        'title': classTest.title,
        'subject': classTest.subject,
        'description': classTest.description,
        'testDate': Timestamp.fromDate(classTest.testDate),
        'location': classTest.location,
        'instructions': classTest.instructions,
        'createdById': user.uid,
        'createdByName': userData?['name'] ?? user.displayName ?? 'Unknown',
        'createdByRole': UserRole.cr.name,
        'createdAt': Timestamp.fromDate(now),
        'updatedAt': Timestamp.fromDate(now),
      };

      final docRef = await _classTestsCollection.add(classTestData);
      return docRef.id;
    } catch (e) {
      throw Exception('Failed to create class test: $e');
    }
  }

  // Update an existing class test (cr only)
  Future<void> updateClassTest(String id, UpdateClassTestModel classTest) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      // Get user role from Firestore
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'cr') {
        throw Exception('Insufficient permissions. CR role required.');
      }

      final updateData = <String, dynamic>{
        'updatedAt': Timestamp.fromDate(DateTime.now()),
      };

      if (classTest.title != null) updateData['title'] = classTest.title;
      if (classTest.subject != null) updateData['subject'] = classTest.subject;
      if (classTest.description != null) updateData['description'] = classTest.description;
      if (classTest.testDate != null) updateData['testDate'] = Timestamp.fromDate(classTest.testDate!);
      if (classTest.location != null) updateData['location'] = classTest.location;
      if (classTest.instructions != null) updateData['instructions'] = classTest.instructions;

      await _classTestsCollection.doc(id).update(updateData);
    } catch (e) {
      throw Exception('Failed to update class test: $e');
    }
  }

  // Delete a class test (cr only)
  Future<void> deleteClassTest(String id) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      // Get user role from Firestore
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'cr') {
        throw Exception('Insufficient permissions. CR role required.');
      }

      await _classTestsCollection.doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete class test: $e');
    }
  }

  // Check if current user is cr
  Future<bool> isCurrentUserCR() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return false;

      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      return userData?['role'] == 'cr';
    } catch (e) {
      return false;
    }
  }

  // Get all unique subjects
  Future<List<String>> getSubjects() async {
    try {
      final snapshot = await _classTestsCollection.get();
      final subjects = <String>{};
      
      for (final doc in snapshot.docs) {
        final data = doc.data() as Map<String, dynamic>;
        final subject = data['subject'] as String?;
        if (subject != null && subject.isNotEmpty) {
          subjects.add(subject);
        }
      }
      
      return subjects.toList()..sort();
    } catch (e) {
      throw Exception('Failed to get subjects: $e');
    }
  }
}
