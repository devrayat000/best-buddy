import 'package:flutter/material.dart';
import '../../../../core/auth/biometric_service.dart';
import '../../../../core/settings/biometric_settings_service.dart';

class BiometricSetupDialog extends StatefulWidget {
  const BiometricSetupDialog({super.key});

  @override
  State<BiometricSetupDialog> createState() => _BiometricSetupDialogState();
}

class _BiometricSetupDialogState extends State<BiometricSetupDialog> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
        children: [
          Icon(Icons.fingerprint, color: Colors.blue),
          SizedBox(width: 8),
          Text('Enable Biometric Login'),
        ],
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Would you like to enable biometric authentication for faster and more secure login?',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            '• Quick access to your account\n'
            '• Enhanced security\n'
            '• No need to remember passwords',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => _handleChoice(false),
          child: const Text('Not Now'),
        ),
        ElevatedButton(
          onPressed: _isLoading ? null : () => _handleChoice(true),
          child: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Enable'),
        ),
      ],
    );
  }

  Future<void> _handleChoice(bool enable) async {
    setState(() => _isLoading = true);

    try {
      if (enable) {
        // Test biometric authentication first
        final result = await BiometricService.authenticate(
          reason: 'Please authenticate to enable biometric login',
        );

        if (result == BiometricAuthResult.success) {
          await BiometricSettingsService.setBiometricEnabled(true);
          if (mounted) {
            Navigator.of(context).pop(true);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Biometric login enabled successfully!'),
                backgroundColor: Colors.green,
              ),
            );
          }
        } else {
          await BiometricSettingsService.setBiometricEnabled(false);
          if (mounted) {
            Navigator.of(context).pop(false);
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
          Navigator.of(context).pop(false);
        }
      }
    } catch (e) {
      await BiometricSettingsService.setBiometricEnabled(false);
      if (mounted) {
        Navigator.of(context).pop(false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('An error occurred while setting up biometric login'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
}
