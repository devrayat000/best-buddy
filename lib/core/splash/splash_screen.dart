import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../di/injection_container.dart';
import '../auth/auth_service.dart';

/// App initialization states
enum AppInitState {
  initializing,
  ready,
  error,
}

/// Dynamic splash screen that handles app initialization
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AppInitState _initState = AppInitState.initializing;
  String? _errorMessage;
  String _currentStep = 'Starting initialization...';

  @override
  void initState() {
    log('SPLASH SCREEN LOADING');
    super.initState();
    // Start initialization when splash screen is first loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeApp();
    });
  }

  Future<void> _initializeApp() async {
    try {
      setState(() {
        _initState = AppInitState.initializing;
        _errorMessage = null;
      });

      await _updateStep('Initializing Flutter engine...');
      await Future.delayed(const Duration(milliseconds: 300));

      await _updateStep('Setting up system UI...');
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
      );
      await Future.delayed(const Duration(milliseconds: 200));

      await _updateStep('Initializing services...');
      // Initialize all singletons and services here
      await setupServiceLocator();
      await Future.delayed(const Duration(milliseconds: 500));
      await _updateStep('Finalizing setup...');
      await Future.delayed(const Duration(milliseconds: 300));

      if (mounted) {
        setState(() {
          _initState = AppInitState.ready;
        });

        // Wait a moment to show completion, then navigate
        await Future.delayed(const Duration(milliseconds: 500));

        if (mounted) {
          // Get auth state to determine where to navigate
          final authService = AuthService();
          final isAuthenticated = authService.isAuthenticated;

          // Navigate based on auth state
          if (isAuthenticated) {
            context.go('/notices');
          } else {
            context.go('/');
          }
        }
      }
    } catch (e, s) {
      log('Initialization error: $e', error: e, stackTrace: s);
      if (mounted) {
        setState(() {
          _initState = AppInitState.error;
          _errorMessage = e.toString();
        });
      }
    }
  }

  Future<void> _updateStep(String step) async {
    if (mounted) {
      setState(() {
        _currentStep = step;
      });
    }
  }

  void _retry() {
    _initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final backgroundColor =
        isDark ? const Color(0xFF0F172A) : const Color(0xFFFAFAFA);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [
                    const Color(0xFF0F172A),
                    const Color(0xFF111827),
                    const Color(0xFF1F2937),
                  ]
                : [
                    const Color(0xFFFAFAFA),
                    const Color(0xFFF5F5F5),
                    const Color(0xFFE5E7EB),
                  ],
          ),
        ),
        child: SafeArea(
          child: _errorMessage != null
              ? _buildErrorView(context, colorScheme)
              : _buildLoadingView(context, colorScheme),
        ),
      ),
    );
  }

  Widget _buildLoadingView(BuildContext context, ColorScheme colorScheme) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),

        // App Logo/Title
        TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: 1500),
          tween: Tween(begin: 0.0, end: 1.0),
          curve: Curves.elasticOut,
          builder: (context, value, child) {
            return Transform.scale(
              scale: 0.8 + (0.2 * value),
              child: Opacity(
                opacity: clampDouble(value, 0, 1),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(
                        Icons.school,
                        size: 120,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Study Buddy',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.onSurface,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),

        // Animated Progress Indicator
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            children: [
              // Continuous progress animation
              TweenAnimationBuilder<double>(
                duration: const Duration(seconds: 2),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Container(
                    height: 4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: colorScheme.surfaceContainerHighest,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 4,
                        width: MediaQuery.of(context).size.width * value * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary,
                              colorScheme.secondary,
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                onEnd: () {
                  // Restart animation for continuous effect
                  if (_errorMessage == null &&
                      mounted &&
                      _initState == AppInitState.initializing) {
                    Future.delayed(const Duration(milliseconds: 100), () {
                      if (mounted) {
                        setState(() {});
                      }
                    });
                  }
                },
              ),

              const SizedBox(height: 20),

              // Current step text
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Text(
                  _currentStep,
                  key: ValueKey(_currentStep),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurface
                            .withAlpha((0.7 * 255).toInt()),
                        letterSpacing: 0.3,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),

        const Spacer(flex: 3),
      ],
    );
  }

  Widget _buildErrorView(BuildContext context, ColorScheme colorScheme) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),

        // Error Icon
        Icon(
          Icons.error_outline,
          size: 80,
          color: colorScheme.error,
        ),

        const SizedBox(height: 30),

        // Error Title
        Text(
          'Initialization Failed',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
        ),

        const SizedBox(height: 20),

        // Error Message
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            _errorMessage ?? 'An unexpected error occurred',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface.withAlpha((0.7 * 255).toInt()),
                ),
            textAlign: TextAlign.center,
          ),
        ),

        const SizedBox(height: 40),

        // Retry Button
        ElevatedButton.icon(
          onPressed: _retry,
          icon: const Icon(Icons.refresh),
          label: const Text('Retry'),
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          ),
        ),

        const Spacer(),
      ],
    );
  }
}
