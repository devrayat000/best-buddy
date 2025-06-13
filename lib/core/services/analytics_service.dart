import 'dart:developer';
import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  static final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver get observer =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  // User Authentication Events
  static Future<void> logLogin(String method) async {
    try {
      await _analytics.logLogin(loginMethod: method);
      log('📊 Analytics: User logged in with $method');
    } catch (e) {
      log('❌ Analytics Login Error: $e');
    }
  }

  static Future<void> logSignUp(String method) async {
    try {
      await _analytics.logSignUp(signUpMethod: method);
      log('📊 Analytics: User signed up with $method');
    } catch (e) {
      log('❌ Analytics SignUp Error: $e');
    }
  }

  static Future<void> logSignOut() async {
    try {
      await _analytics.logEvent(name: 'sign_out');
      log('📊 Analytics: User signed out');
    } catch (e) {
      log('❌ Analytics SignOut Error: $e');
    }
  }

  // Class Test Events
  static Future<void> logCalendarMonthChange(String month, String year) async {
    try {
      await _analytics.logEvent(
        name: 'calendar_month_change',
        parameters: {
          'month': month,
          'year': year,
          'action': 'month_navigation',
        },
      );
      log('📊 Analytics: Calendar month changed to $month/$year');
    } catch (e) {
      log('❌ Analytics CalendarMonthChange Error: $e');
    }
  } // Profile Events

  static Future<void> logThemeChange(String theme) async {
    try {
      await _analytics.logEvent(
        name: 'theme_change',
        parameters: {
          'theme': theme,
          'action': 'settings_change',
        },
      );
      log('📊 Analytics: Theme changed to $theme');
    } catch (e) {
      log('❌ Analytics ThemeChange Error: $e');
    }
  }

  static Future<void> logLanguageChange(String language) async {
    try {
      await _analytics.logEvent(
        name: 'language_change',
        parameters: {
          'language': language,
          'action': 'settings_change',
        },
      );
      log('📊 Analytics: Language changed to $language');
    } catch (e) {
      log('❌ Analytics LanguageChange Error: $e');
    }
  }

  // Error Events
  static Future<void> logError(String errorType, String errorMessage,
      {String? screen}) async {
    try {
      await _analytics.logEvent(
        name: 'error_occurred',
        parameters: {
          'error_type': errorType,
          'error_message': errorMessage.length > 100
              ? errorMessage.substring(0, 100)
              : errorMessage,
          if (screen != null) 'screen': screen,
          'event_category': 'error',
        },
      );
      log('📊 Analytics: Error logged - $errorType');
    } catch (e) {
      log('❌ Analytics Error Logging Error: $e');
    }
  }

  // Search Events
  static Future<void> logSearch(String searchTerm, String contentType) async {
    try {
      await _analytics.logSearch(searchTerm: searchTerm);
      await _analytics.logEvent(
        name: 'search_performed',
        parameters: {
          'search_term': searchTerm,
          'content_type': contentType,
        },
      );
      log('📊 Analytics: Search performed - $searchTerm in $contentType');
    } catch (e) {
      log('❌ Analytics Search Error: $e');
    }
  }

  // Engagement Events
  static Future<void> logTimeSpent(String screen, int seconds) async {
    try {
      await _analytics.logEvent(
        name: 'time_spent',
        parameters: {
          'screen': screen,
          'duration_seconds': seconds,
          'engagement_type': 'time_on_screen',
        },
      );
      log('📊 Analytics: Time spent on $screen - ${seconds}s');
    } catch (e) {
      log('❌ Analytics TimeSpent Error: $e');
    }
  }

  // Push Notification Events
  static Future<void> logNotificationReceived(
      String notificationType, String? notificationId) async {
    try {
      await _analytics.logEvent(
        name: 'notification_received',
        parameters: {
          'notification_type': notificationType,
          if (notificationId != null) 'notification_id': notificationId,
          'action': 'push_notification',
        },
      );
      log('📊 Analytics: Notification received - $notificationType');
    } catch (e) {
      log('❌ Analytics NotificationReceived Error: $e');
    }
  }

  static Future<void> logNotificationOpened(
      String notificationType, String? notificationId) async {
    try {
      await _analytics.logEvent(
        name: 'notification_opened',
        parameters: {
          'notification_type': notificationType,
          if (notificationId != null) 'notification_id': notificationId,
          'action': 'push_notification',
        },
      );
      log('📊 Analytics: Notification opened - $notificationType');
    } catch (e) {
      log('❌ Analytics NotificationOpened Error: $e');
    }
  }

  // User Properties
  static Future<void> setUserProperty(String name, String value) async {
    try {
      await _analytics.setUserProperty(name: name, value: value);
      log('📊 Analytics: User property set - $name: $value');
    } catch (e) {
      log('❌ Analytics UserProperty Error: $e');
    }
  }

  static Future<void> setUserId(String userId) async {
    try {
      await _analytics.setUserId(id: userId);
      log('📊 Analytics: User ID set - $userId');
    } catch (e) {
      log('❌ Analytics SetUserId Error: $e');
    }
  }

  // Custom Events
  static Future<void> logCustomEvent(
      String eventName, Map<String, Object>? parameters) async {
    try {
      await _analytics.logEvent(
        name: eventName,
        parameters: parameters,
      );
      log('📊 Analytics: Custom event - $eventName');
    } catch (e) {
      log('❌ Analytics CustomEvent Error: $e');
    }
  }
}
