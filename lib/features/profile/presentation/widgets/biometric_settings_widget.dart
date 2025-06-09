import 'package:flutter/material.dart';
import '../../../../core/auth/biometric_service.dart';
import '../../../../core/settings/biometric_settings_service.dart';

class BiometricSettingsWidget extends StatefulWidget {
  const BiometricSettingsWidget({super.key});

  @override
  State<BiometricSettingsWidget> createState() =>
      _BiometricSettingsWidgetState();
}

class _BiometricSettingsWidgetState extends State<BiometricSettingsWidget> {
  bool _isLoading = true;
  bool _isBiometricAvailable = false;
  bool _isBiometricEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadBiometricSettings();
  }

  Future<void> _loadBiometricSettings() async {
    try {
      final isAvailable = await BiometricService.isBiometricAvailable();
      final isEnabled = await BiometricSettingsService.isBiometricEnabled();

      if (mounted) {
        setState(() {
          _isBiometricAvailable = isAvailable;
          _isBiometricEnabled = isEnabled;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isBiometricAvailable = false;
          _isBiometricEnabled = false;
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _toggleBiometric(bool value) async {
    if (!_isBiometricAvailable) return;

    setState(() => _isLoading = true);

    try {
      if (value) {
        // Test biometric authentication before enabling
        final result = await BiometricService.authenticate(
          reason: 'Please authenticate to enable biometric login',
        );

        if (result == BiometricAuthResult.success) {
          await BiometricSettingsService.setBiometricEnabled(true);
          if (mounted) {
            setState(() {
              _isBiometricEnabled = true;
              _isLoading = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Biometric login enabled successfully!'),
                backgroundColor: Colors.green,
              ),
            );
          }
        } else {
          if (mounted) {
            setState(() => _isLoading = false);
            String message = 'Failed to enable biometric login';
            switch (result) {
              case BiometricAuthResult.notAvailable:
                message = 'Biometric authentication is not available';
                break;
              case BiometricAuthResult.notEnrolled:
                message =
                    'Please set up biometric authentication in device settings';
                break;
              case BiometricAuthResult.lockedOut:
                message = 'Biometric authentication is temporarily locked';
                break;
              default:
                message = 'Biometric authentication failed';
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: Colors.orange,
              ),
            );
          }
        }
      } else {
        await BiometricSettingsService.setBiometricEnabled(false);
        if (mounted) {
          setState(() {
            _isBiometricEnabled = false;
            _isLoading = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Biometric login disabled'),
              backgroundColor: Colors.grey,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('An error occurred while updating biometric settings'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.fingerprint),
      title: const Text('Biometric Login'),
      subtitle: Text(
        _isBiometricAvailable
            ? 'Use fingerprint or face recognition to login'
            : 'Not available on this device',
      ),
      trailing: _isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Switch(
              value: _isBiometricEnabled && _isBiometricAvailable,
              onChanged: _isBiometricAvailable ? _toggleBiometric : null,
            ),
    );
  }
}
