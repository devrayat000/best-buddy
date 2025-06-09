import 'package:get_it/get_it.dart';
import '../storage/storage_service.dart';

class BiometricSettingsService {
  static const String _biometricEnabledKey = 'biometric_enabled';

  /// Check if biometric authentication is enabled in user preferences
  static Future<bool> isBiometricEnabled() async {
    final storageService = GetIt.instance<StorageService>();
    final value = await storageService.getString(_biometricEnabledKey);
    return value == 'true';
  }

  /// Enable or disable biometric authentication in user preferences
  static Future<void> setBiometricEnabled(bool enabled) async {
    final storageService = GetIt.instance<StorageService>();
    await storageService.setString(_biometricEnabledKey, enabled.toString());
  }

  /// Check if user has been asked about biometric preferences
  static Future<bool> hasUserSetBiometricPreference() async {
    final storageService = GetIt.instance<StorageService>();
    final value = await storageService.getString(_biometricEnabledKey);
    return value != null;
  }
}
