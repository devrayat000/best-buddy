import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import '../settings/biometric_settings_service.dart';

class BiometricService {
  static final LocalAuthentication _localAuth = LocalAuthentication();

  /// Check if biometric authentication is available on the device
  static Future<bool> isBiometricAvailable() async {
    try {
      final bool isAvailable = await _localAuth.canCheckBiometrics;
      final bool isDeviceSupported = await _localAuth.isDeviceSupported();
      return isAvailable && isDeviceSupported;
    } catch (e) {
      return false;
    }
  }

  /// Get available biometric types
  static Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } catch (e) {
      return [];
    }
  }

  /// Authenticate using biometrics
  static Future<BiometricAuthResult> authenticate({
    String reason = 'Please authenticate to access your account',
  }) async {
    try {
      final bool isAvailable = await isBiometricAvailable();
      if (!isAvailable) {
        return BiometricAuthResult.notAvailable;
      }

      final bool didAuthenticate = await _localAuth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );

      return didAuthenticate
          ? BiometricAuthResult.success
          : BiometricAuthResult.failure;
    } on PlatformException catch (e) {
      switch (e.code) {
        case auth_error.notAvailable:
          return BiometricAuthResult.notAvailable;
        case auth_error.notEnrolled:
          return BiometricAuthResult.notEnrolled;
        case auth_error.lockedOut:
        case auth_error.permanentlyLockedOut:
          return BiometricAuthResult.lockedOut;
        default:
          return BiometricAuthResult.error;
      }
    } catch (e) {
      return BiometricAuthResult.error;
    }
  }

  /// Check if biometric authentication is enabled for the app
  static Future<bool> isBiometricEnabled() async {
    // Check if device supports biometrics
    final isDeviceCapable = await isBiometricAvailable();
    if (!isDeviceCapable) return false;

    // Check user preference
    return await BiometricSettingsService.isBiometricEnabled();
  }

  /// Check if user should be prompted to enable biometric authentication
  static Future<bool> shouldPromptForBiometricSetup() async {
    final isAvailable = await isBiometricAvailable();
    final hasSetPreference =
        await BiometricSettingsService.hasUserSetBiometricPreference();
    return isAvailable && !hasSetPreference;
  }
}

enum BiometricAuthResult {
  success,
  failure,
  notAvailable,
  notEnrolled,
  lockedOut,
  error,
}
