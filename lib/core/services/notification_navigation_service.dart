import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Service for handling navigation from notifications
/// This service provides a way to navigate from both foreground and background contexts
class NotificationNavigationService {
  static final NotificationNavigationService _instance =
      NotificationNavigationService._internal();
  factory NotificationNavigationService() => _instance;
  NotificationNavigationService._internal();

  BuildContext? _context;
  GoRouter? _router;

  /// Initialize the service with the current context and router
  void initialize(BuildContext context, GoRouter router) {
    _context = context;
    _router = router;
  }

  /// Navigate to a specific screen based on notification data
  void navigateFromNotification(String type, String id) {
    if (_context == null || _router == null) {
      log('❌ Navigation service not initialized');
      return;
    }

    try {
      switch (type) {
        case 'notice':
          _navigateToNotice(id);
          break;
        case 'class_test':
          _navigateToClassTest(id);
          break;
        case 'test_reminder':
          _navigateToClassTests();
          break;
        default:
          log('❌ Unknown notification type: $type');
      }
    } catch (e) {
      log('❌ Failed to navigate from notification: $e');
    }
  }

  /// Navigate to notice detail
  void _navigateToNotice(String noticeId) {
    log('📱 Navigating to notice: $noticeId');
    _router!.goNamed('notice-detail', pathParameters: {'id': noticeId});
  }

  /// Navigate to class test detail
  void _navigateToClassTest(String classTestId) {
    log('📱 Navigating to class test: $classTestId');
    _router!.goNamed('class-test-detail', pathParameters: {'id': classTestId});
  }

  /// Navigate to class tests list (for test reminders)
  void _navigateToClassTests() {
    log('📱 Navigating to class tests list');
    _router!.goNamed('class-tests');
  }

  /// Clear the context and router (called when app is disposed)
  void dispose() {
    _context = null;
    _router = null;
  }
}
