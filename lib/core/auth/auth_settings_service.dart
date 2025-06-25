import 'package:get_it/get_it.dart';
import '../storage/storage_service.dart';

class AuthSettingsService {
  static const String _autoLoginKey = 'auto_login_enabled';
  static const String _sessionValidationKey = 'session_validation_enabled';

  /// Get auto login preference
  static Future<bool> isAutoLoginEnabled() async {
    try {
      final storageService = GetIt.instance<StorageService>();
      final value = await storageService.getString(_autoLoginKey);
      return value == 'true';
    } catch (e) {
      return false;
    }
  }

  /// Set auto login preference
  static Future<void> setAutoLoginEnabled(bool enabled) async {
    try {
      final storageService = GetIt.instance<StorageService>();
      await storageService.setString(_autoLoginKey, enabled.toString());
    } catch (e) {
      // Handle error silently
    }
  }

  /// Get session validation preference
  static Future<bool> isSessionValidationEnabled() async {
    try {
      final storageService = GetIt.instance<StorageService>();
      final value = await storageService.getString(_sessionValidationKey);
      return value != 'false'; // Default to true
    } catch (e) {
      return true;
    }
  }

  /// Set session validation preference
  static Future<void> setSessionValidationEnabled(bool enabled) async {
    try {
      final storageService = GetIt.instance<StorageService>();
      await storageService.setString(_sessionValidationKey, enabled.toString());
    } catch (e) {
      // Handle error silently
    }
  }
}
