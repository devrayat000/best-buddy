import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/auth/biometric_service.dart';
import '../../../../core/settings/biometric_settings_service.dart';
import '../../../../core/storage/storage_service.dart';
import '../../../../core/services/analytics_service.dart';

class BiometricLoginWidget extends StatefulWidget {
  const BiometricLoginWidget({super.key});

  @override
  State<BiometricLoginWidget> createState() => _BiometricLoginWidgetState();
}

class _BiometricLoginWidgetState extends State<BiometricLoginWidget> {
  bool _isBiometricAvailable = false;
  bool _isBiometricEnabled = false;
  bool _isCheckingBiometric = true;

  @override
  void initState() {
    super.initState();
    _checkBiometricAvailability();
  }

  Future<void> _checkBiometricAvailability() async {
    try {
      final isAvailable = await BiometricService.isBiometricAvailable();
      final biometrics = await BiometricService.getAvailableBiometrics();
      final isEnabled = await BiometricSettingsService.isBiometricEnabled();

      // Check if there's a stored user session
      final storageService = GetIt.instance<StorageService>();
      final storedToken = await storageService.getToken();
      final hasStoredSession = storedToken != null;

      if (mounted) {
        setState(() {
          _isBiometricAvailable =
              isAvailable && biometrics.isNotEmpty && hasStoredSession;
          _isBiometricEnabled = isEnabled;
          _isCheckingBiometric = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isBiometricAvailable = false;
          _isBiometricEnabled = false;
          _isCheckingBiometric = false;
        });
      }
    }
  }

  Future<void> _authenticateWithBiometric() async {
    // Track biometric login attempt
    AnalyticsService.logLogin('biometric');
    await context.read<AuthCubit>().loginWithBiometric();
  }

  @override
  Widget build(BuildContext context) {
    // Don't show anything while checking biometric availability
    if (_isCheckingBiometric) {
      return const SizedBox.shrink();
    } // Don't show if biometric is not available or not enabled by user
    if (!_isBiometricAvailable || !_isBiometricEnabled) {
      return const SizedBox.shrink();
    }

    // Only show if user is not authenticated and there's a stored session
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        // Only show biometric option if user was previously authenticated
        // (meaning there's a stored session that can be validated)
        if (state is! AuthUnauthenticated && state is! AuthSessionExpired) {
          return const SizedBox.shrink();
        }

        return Column(
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey[300])),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'OR',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey[300])),
              ],
            ),
            const SizedBox(height: 24),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                final isLoading = state is AuthLoading;

                return InkWell(
                  onTap: isLoading ? null : _authenticateWithBiometric,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isLoading) ...[
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          const SizedBox(width: 12),
                        ] else ...[
                          Icon(
                            Icons.fingerprint,
                            size: 24,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 12),
                        ],
                        Text(
                          isLoading
                              ? 'Authenticating...'
                              : 'Use Biometric Login',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: isLoading
                                        ? Colors.grey[600]
                                        : Theme.of(context).colorScheme.primary,
                                  ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
