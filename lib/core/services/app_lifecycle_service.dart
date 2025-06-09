import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../auth/auth_cubit.dart';

class AppLifecycleService extends WidgetsBindingObserver {
  static AppLifecycleService? _instance;

  AppLifecycleService._();

  static AppLifecycleService get instance {
    _instance ??= AppLifecycleService._();
    return _instance!;
  }

  void initialize() {
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        // Validate session when app resumes
        _validateSessionOnResume();
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        // No action needed for these states
        break;
    }
  }

  Future<void> _validateSessionOnResume() async {
    try {
      final authCubit = GetIt.instance<AuthCubit>();
      if (authCubit.state is AuthAuthenticated) {
        await authCubit.validateSession();
      }
    } catch (e) {
      // Handle silently - services might not be initialized yet
    }
  }
}
