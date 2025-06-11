import 'dart:developer';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:timezone/timezone.dart' as tz;
import '../storage/storage_service.dart';
import 'notification_navigation_service.dart';
import '../../features/notifications/data/upload_fcm_token.dart';
import '../../firebase_options.dart';

/// Top-level function for handling background messages
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  log('📱 Background message received: ${message.messageId}');
  // Show local notification for background messages
  await _showNotification(message);
}

/// Show notification (unified for both foreground and background)
Future<void> _showNotification(
  RemoteMessage message, {
  FlutterLocalNotificationsPlugin? localNotificationsInstance,
}) async {
  try {
    final notification = message.notification;
    if (notification == null) return;

    final localNotifications =
        localNotificationsInstance ?? FlutterLocalNotificationsPlugin();

    // Initialize if no instance provided (background case)
    if (localNotificationsInstance == null) {
      await localNotifications.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
          iOS: DarwinInitializationSettings(),
        ),
      );
    }

    final messageType = message.data['type'] as String?;
    final messageId = message.data['id'] as String?;
    final channelId = _getChannelId(messageType);

    await localNotifications.show(
      message.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channelId,
          _getChannelName(channelId),
          channelDescription: _getChannelDescription(channelId),
          importance: _getImportance(channelId),
          priority: _getPriority(channelId),
          icon: '@mipmap/ic_launcher',
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: messageType != null && messageId != null
          ? '$messageType|$messageId'
          : null,
    );

    // Schedule test reminder if this is a class test notification
    if (messageType == 'class_test' && messageId != null) {
      await _scheduleClassTestReminder(
        message: message,
        localNotifications: localNotifications,
      );
    }

    log('📱 Notification displayed successfully');
  } catch (e) {
    log('❌ Failed to show notification: $e');
  }
}

/// Schedule a test reminder notification for a class test
Future<void> _scheduleClassTestReminder({
  required RemoteMessage message,
  required FlutterLocalNotificationsPlugin localNotifications,
}) async {
  try {
    final testId = message.data['id'] as String?;
    final datetimeStr = message.data['datetime'] as String?;
    final testTitle = message.notification?.title ?? 'Class Test';

    if (testId == null || datetimeStr == null) {
      log('❌ Missing required data for class test reminder: testId=$testId, datetime=$datetimeStr');
      return;
    }

    // Parse the test datetime
    DateTime testDateTime;
    try {
      testDateTime = DateTime.parse(datetimeStr);
    } catch (e) {
      log('❌ Failed to parse test datetime: $datetimeStr, error: $e');
      return;
    }

    // Calculate reminder time: 9 PM the day before the test
    final testDate =
        DateTime(testDateTime.year, testDateTime.month, testDateTime.day);
    final reminderDate = testDate.subtract(const Duration(days: 1));
    final reminderDateTime = DateTime(
      reminderDate.year,
      reminderDate.month,
      reminderDate.day,
      21, // 9 PM
      0,
    );

    // Only schedule if the reminder time is in the future
    if (reminderDateTime.isBefore(DateTime.now())) {
      log('⏰ Test reminder time has already passed: $reminderDateTime');
      return;
    }

    final tzDateTime = tz.TZDateTime.from(reminderDateTime, tz.local);

    await localNotifications.zonedSchedule(
      testId.hashCode, // Use test ID hash as notification ID
      'Test Reminder',
      'You have "$testTitle" tomorrow!',
      tzDateTime,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'test_reminders',
          'Test Reminders',
          channelDescription: 'Reminders for upcoming tests',
          importance: Importance.high,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: 'test_reminder|$testId',
    );

    log('⏰ Test reminder scheduled for $reminderDateTime (test: $testTitle)');
  } catch (e) {
    log('❌ Failed to schedule test reminder: $e');
  }
}

// Helper functions
String _getChannelId(String? messageType) {
  switch (messageType) {
    case 'notice':
      return 'notices';
    case 'class_test':
      return 'class_tests';
    default:
      return 'default';
  }
}

String _getChannelName(String channelId) {
  switch (channelId) {
    case 'notices':
      return 'Notices';
    case 'class_tests':
      return 'Class Tests';
    case 'test_reminders':
      return 'Test Reminders';
    default:
      return 'Default';
  }
}

String _getChannelDescription(String channelId) {
  switch (channelId) {
    case 'notices':
      return 'Notifications for new notices';
    case 'class_tests':
      return 'Notifications for class tests';
    case 'test_reminders':
      return 'Reminders for upcoming tests';
    default:
      return 'Default notifications';
  }
}

Importance _getImportance(String channelId) {
  switch (channelId) {
    case 'class_tests':
    case 'test_reminders':
      return Importance.high;
    default:
      return Importance.defaultImportance;
  }
}

Priority _getPriority(String channelId) {
  switch (channelId) {
    case 'class_tests':
    case 'test_reminders':
      return Priority.high;
    default:
      return Priority.defaultPriority;
  }
}

class FirebaseMessagingService {
  static final FirebaseMessagingService _instance =
      FirebaseMessagingService._internal();
  factory FirebaseMessagingService() => _instance;
  FirebaseMessagingService._internal();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  String? _fcmToken;
  bool _isInitialized = false;

  String? get fcmToken => _fcmToken;
  bool get isInitialized => _isInitialized;

  /// Initialize Firebase Messaging service
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      await _initializeLocalNotifications();
      await _requestPermissions();
      await _getFCMToken();
      _setupMessageHandlers();

      _isInitialized = true;
      log('✅ Firebase Messaging Service initialized successfully');
    } catch (e) {
      log('❌ Failed to initialize Firebase Messaging Service: $e');
      rethrow;
    }
  }

  /// Initialize local notifications
  Future<void> _initializeLocalNotifications() async {
    await _localNotifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
        ),
      ),
      onDidReceiveNotificationResponse: _onNotificationResponse,
    );

    await _createNotificationChannels();
  }

  /// Create notification channels for Android
  Future<void> _createNotificationChannels() async {
    final androidPlugin =
        _localNotifications.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    if (androidPlugin != null) {
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          'notices',
          'Notices',
          description: 'Notifications for new notices',
          importance: Importance.defaultImportance,
        ),
      );

      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          'class_tests',
          'Class Tests',
          description: 'Notifications for class tests',
          importance: Importance.high,
        ),
      );

      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          'test_reminders',
          'Test Reminders',
          description: 'Reminders for upcoming tests',
          importance: Importance.high,
        ),
      );
    }
  }

  /// Request notification permissions
  Future<void> _requestPermissions() async {
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    log('📱 Notification permission status: ${settings.authorizationStatus}');
  }

  /// Get FCM token
  Future<void> _getFCMToken() async {
    try {
      _fcmToken = await _firebaseMessaging.getToken();
      if (_fcmToken != null) {
        log('📱 FCM Token obtained');
        final storageService = GetIt.instance<StorageService>();
        await storageService.setString('fcm_token', _fcmToken!);
      }
    } catch (e) {
      log('❌ Failed to get FCM token: $e');
    }
  }

  /// Set up message handlers
  void _setupMessageHandlers() {
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);
    _firebaseMessaging.onTokenRefresh.listen(_onTokenRefresh);
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    _handleInitialMessage();
  }

  /// Handle initial message when app opens from terminated state
  Future<void> _handleInitialMessage() async {
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      log('📱 App opened from notification');
      Future.delayed(const Duration(milliseconds: 1000), () {
        _navigateFromNotification(initialMessage.data);
      });
    }
  }

  /// Handle foreground messages
  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    log('📱 Foreground message received');
    await _showNotification(message,
        localNotificationsInstance: _localNotifications);
  }

  /// Handle notification tap
  Future<void> _handleNotificationTap(RemoteMessage message) async {
    log('📱 Notification tapped');
    _navigateFromNotification(message.data);
  }

  /// Handle local notification tap
  void _onNotificationResponse(NotificationResponse response) {
    log('📱 Local notification tapped');

    if (response.payload != null) {
      final data = response.payload!.split('|');
      if (data.length >= 2) {
        _navigateFromNotification({'type': data[0], 'id': data[1]});
      }
    }
  }

  /// Navigate based on notification data
  void _navigateFromNotification(Map<String, dynamic> data) {
    final type = data['type'] as String?;
    final id = data['id'] as String?;

    if (type == null || id == null) return;

    try {
      final navigationService = GetIt.instance<NotificationNavigationService>();
      navigationService.navigateFromNotification(type, id);
    } catch (e) {
      log('❌ Navigation service not available: $e');
    }
  }

  /// Handle token refresh
  Future<void> _onTokenRefresh(String token) async {
    log('📱 FCM Token refreshed');
    _fcmToken = token;

    final storageService = GetIt.instance<StorageService>();
    await storageService.setString('fcm_token', token);
    await uploadTokenToServer();
  }

  /// Upload FCM token to server
  Future<void> uploadTokenToServer() async {
    if (_fcmToken == null) return;

    try {
      final client = GetIt.instance<GraphQLClient>();
      await uploadFcmToken(
        client: client,
        token: _fcmToken!,
        deviceType: Platform.isIOS ? 'ios' : 'android',
      );
      log('📱 FCM token uploaded successfully');
    } catch (e) {
      log('❌ Failed to upload FCM token: $e');
    }
  }

  /// Cancel a scheduled notification
  Future<void> cancelNotification(int id) async {
    await _localNotifications.cancel(id);
  }

  /// Cancel all scheduled notifications
  Future<void> cancelAllNotifications() async {
    await _localNotifications.cancelAll();
  }
}
