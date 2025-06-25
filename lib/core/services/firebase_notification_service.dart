import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseNotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Initialize notifications
  Future<void> initialize() async {
    // Request notification permissions
    await _requestPermission();
    
    // Get FCM token and save to user document
    await _saveTokenToUser();
    
    // Listen for token refresh
    _messaging.onTokenRefresh.listen((token) {
      _saveTokenToUser();
    });
  }

  // Request notification permissions
  Future<NotificationSettings> _requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    return settings;
  }

  // Save FCM token to user document
  Future<void> _saveTokenToUser() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return;

      final token = await _messaging.getToken();
      if (token == null) return;

      await _firestore.collection('users').doc(user.uid).update({
        'fcmToken': token,
        'updatedAt': Timestamp.fromDate(DateTime.now()),
      });
    } catch (e) {
      print('Error saving FCM token: $e');
    }
  }

  // Send notification to all users when a notice is created/updated
  Future<void> sendNoticeNotification({
    required String noticeId,
    required String title,
    required String content,
    required bool isUpdate,
  }) async {
    try {
      final user = _auth.currentUser;
      if (user == null) return;

      // Check if current user is admin
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'cr') {
        throw Exception('Only CRs can send notice notifications');
      }

      // Create notification document that can be picked up by a cloud function
      final notificationData = {
        'type': 'notice',
        'title': isUpdate ? 'Notice Updated' : 'New Notice',
        'body': title,
        'data': {
          'noticeId': noticeId,
          'type': 'notice',
          'action': isUpdate ? 'updated' : 'created',
        },
        'createdAt': Timestamp.fromDate(DateTime.now()),
        'createdBy': user.uid,
        'targetAudience': 'all', // Send to all users
        'status': 'pending', // Will be updated by cloud function
      };

      await _firestore.collection('notifications').add(notificationData);
    } catch (e) {
      print('Error sending notice notification: $e');
    }
  }

  // Send notification to all users when a class test is created/updated
  Future<void> sendClassTestNotification({
    required String classTestId,
    required String title,
    required String subject,
    required DateTime testDate,
    required bool isUpdate,
  }) async {
    try {
      final user = _auth.currentUser;
      if (user == null) return;

      // Check if current user is admin
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data();
      final userRole = userData?['role'] as String?;

      if (userRole != 'cr') {
        throw Exception('Only CRs can send class test notifications');
      }

      final formattedDate = '${testDate.day}/${testDate.month}/${testDate.year}';
      
      // Create notification document that can be picked up by a cloud function
      final notificationData = {
        'type': 'class_test',
        'title': isUpdate ? 'Class Test Updated' : 'New Class Test',
        'body': '$title - $subject on $formattedDate',
        'data': {
          'classTestId': classTestId,
          'type': 'class_test',
          'action': isUpdate ? 'updated' : 'created',
        },
        'createdAt': Timestamp.fromDate(DateTime.now()),
        'createdBy': user.uid,
        'targetAudience': 'all', // Send to all users
        'status': 'pending', // Will be updated by cloud function
      };

      await _firestore.collection('notifications').add(notificationData);
    } catch (e) {
      print('Error sending class test notification: $e');
    }
  }

  // Get user's notification history
  Stream<List<Map<String, dynamic>>> getUserNotifications() {
    return _firestore
        .collection('notifications')
        .where('targetAudience', isEqualTo: 'all')
        .orderBy('createdAt', descending: true)
        .limit(50)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => {
                  'id': doc.id,
                  ...doc.data(),
                })
            .toList());
  }

  // Mark notification as read
  Future<void> markNotificationAsRead(String notificationId) async {
    try {
      final user = _auth.currentUser;
      if (user == null) return;

      // Add to user's read notifications subcollection
      await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('readNotifications')
          .doc(notificationId)
          .set({
        'readAt': Timestamp.fromDate(DateTime.now()),
      });
    } catch (e) {
      print('Error marking notification as read: $e');
    }
  }

  // Check if notification is read by user
  Future<bool> isNotificationRead(String notificationId) async {
    try {
      final user = _auth.currentUser;
      if (user == null) return false;

      final doc = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('readNotifications')
          .doc(notificationId)
          .get();

      return doc.exists;
    } catch (e) {
      return false;
    }
  }

  // Get unread notification count
  Future<int> getUnreadNotificationCount() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return 0;

      // Get all notifications
      final notificationsSnapshot = await _firestore
          .collection('notifications')
          .where('targetAudience', isEqualTo: 'all')
          .get();

      // Get read notifications
      final readNotificationsSnapshot = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('readNotifications')
          .get();

      final readNotificationIds = readNotificationsSnapshot.docs
          .map((doc) => doc.id)
          .toSet();

      // Count unread
      int unreadCount = 0;
      for (final doc in notificationsSnapshot.docs) {
        if (!readNotificationIds.contains(doc.id)) {
          unreadCount++;
        }
      }

      return unreadCount;
    } catch (e) {
      return 0;
    }
  }

  // Configure foreground message handling
  void configureForegroundNotificationHandling() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
        // Show local notification here if needed
      }
    });
  }

  // Handle notification tap when app is in background
  void configureNotificationTapHandling() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      print('Message data: ${message.data}');
      
      // Navigate to appropriate screen based on notification data
      _handleNotificationTap(message.data);
    });
  }

  // Handle notification tap navigation
  void _handleNotificationTap(Map<String, dynamic> data) {
    final type = data['type'] as String?;
    final id = data['noticeId'] ?? data['classTestId'] as String?;

    if (type == 'notice' && id != null) {
      // Navigate to notice details
      print('Navigate to notice: $id');
    } else if (type == 'class_test' && id != null) {
      // Navigate to class test details
      print('Navigate to class test: $id');
    }
  }

  // Get initial message when app is opened from terminated state
  Future<void> getInitialMessage() async {
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      print('App opened from notification: ${initialMessage.data}');
      _handleNotificationTap(initialMessage.data);
    }
  }
}
