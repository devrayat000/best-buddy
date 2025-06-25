import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';
import '../services/firebase_notification_service.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseNotificationService _notificationService = FirebaseNotificationService();

  // Stream of auth state changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  
  // Current user
  User? get currentUser => _firebaseAuth.currentUser;
  
  // Check if user is authenticated
  bool get isAuthenticated => currentUser != null;

  // Initialize the service
  Future<void> initialize() async {
    // Listen to auth state changes and handle notification setup
    authStateChanges.listen((user) async {
      if (user != null) {
        // Initialize notifications for authenticated user
        await _notificationService.initialize();
      }
    });

    // Initialize notification handling
    _notificationService.configureForegroundNotificationHandling();
    _notificationService.configureNotificationTapHandling();
    await _notificationService.getInitialMessage();
  }

  // Get current user data from Firestore
  Future<UserModel?> getCurrentUserData() async {
    final user = currentUser;
    if (user == null) return null;

    try {
      final doc = await _firestore.collection('users').doc(user.uid).get();
      if (doc.exists) {
        final data = doc.data()!;
        return UserModel.fromJson({
          ...data,
          'id': doc.id,
        });
      }
      return null;
    } catch (e) {
      log('Error getting user data: $e');
      return null;
    }
  }

  // Get user role
  Future<String?> getCurrentUserRole() async {
    final userData = await getCurrentUserData();
    return userData?.role.name;
  }

  // Check if current user is CR
  Future<bool> isCurrentUserCR() async {
    final role = await getCurrentUserRole();
    return role == 'cr';
  }

  // Sign in with email and password
  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      // Transform student ID to email if needed
      String finalEmail = email;
      if (!email.contains('@')) {
        finalEmail = '$email@me.buet.ac.bd';
      }

      return await _firebaseAuth.signInWithEmailAndPassword(
        email: finalEmail,
        password: password,
      );
    } catch (e) {
      log('Sign in error: $e');
      rethrow;
    }
  }

  // Sign up with email and password
  Future<UserCredential> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    UserRole role = UserRole.student,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Create user document in Firestore
      if (credential.user != null) {
        await _createUserDocument(
          credential.user!,
          name: name,
          role: role,
        );
      }

      return credential;
    } catch (e) {
      log('Sign up error: $e');
      rethrow;
    }
  }

  // Create user document in Firestore
  Future<void> _createUserDocument(
    User user, {
    required String name,
    required UserRole role,
  }) async {
    try {
      final userData = UserModel(
        id: user.uid,
        name: name,
        email: user.email!,
        role: role,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      await _firestore
          .collection('users')
          .doc(user.uid)
          .set(userData.toJson());

      // Update display name
      await user.updateDisplayName(name);
    } catch (e) {
      log('Error creating user document: $e');
      rethrow;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      log('Sign out error: $e');
      rethrow;
    }
  }

  // Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      // Transform student ID to email if needed
      String finalEmail = email;
      if (!email.contains('@')) {
        finalEmail = '$email@me.buet.ac.bd';
      }

      await _firebaseAuth.sendPasswordResetEmail(email: finalEmail);
    } catch (e) {
      log('Password reset error: $e');
      rethrow;
    }
  }

  // Send email verification
  Future<void> sendEmailVerification() async {
    try {
      final user = currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
    } catch (e) {
      log('Email verification error: $e');
      rethrow;
    }
  }

  // Update user profile
  Future<void> updateUserProfile({
    String? name,
    String? photoUrl,
  }) async {
    try {
      final user = currentUser;
      if (user == null) throw Exception('No authenticated user');

      // Update Firebase Auth profile
      if (name != null) {
        await user.updateDisplayName(name);
      }
      if (photoUrl != null) {
        await user.updatePhotoURL(photoUrl);
      }

      // Update Firestore document
      final updates = <String, dynamic>{
        'updatedAt': FieldValue.serverTimestamp(),
      };
      if (name != null) updates['name'] = name;
      if (photoUrl != null) updates['photoUrl'] = photoUrl;

      await _firestore.collection('users').doc(user.uid).update(updates);
    } catch (e) {
      log('Profile update error: $e');
      rethrow;
    }
  }

  // Reload current user
  Future<void> reloadUser() async {
    try {
      await currentUser?.reload();
    } catch (e) {
      log('User reload error: $e');
      rethrow;
    }
  }

  // Delete account
  Future<void> deleteAccount() async {
    try {
      final user = currentUser;
      if (user == null) throw Exception('No authenticated user');

      // Delete user document from Firestore
      await _firestore.collection('users').doc(user.uid).delete();

      // Delete Firebase Auth account
      await user.delete();
    } catch (e) {
      log('Account deletion error: $e');
      rethrow;
    }
  }
}
