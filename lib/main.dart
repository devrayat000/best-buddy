import 'dart:async';
import 'dart:developer';

import 'package:best_buddy_flutter/core/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'core/router/app_router.dart';
import 'core/theme/theme_cubit.dart';
import 'core/services/app_lifecycle_service.dart';
import 'core/auth/auth_service.dart';
import 'core/di/injection_container.dart';
import 'core/services/analytics_service.dart';
import 'firebase_options.dart';

void main() {
  runZonedGuarded(
    _initializeApp,
    (Object error, StackTrace stack) {
      log(error.toString(), error: error, stackTrace: stack);
      // Track unhandled errors in analytics
      AnalyticsService.logError('unhandled_exception', error.toString());
    },
  );
}

Future<void> _initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive storage
  await _initializeHive();

  // Initialize Firebase first
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      name: 'app',
    );
  }

  // Enable Firestore offline persistence
  await _enableFirestoreOffline();

  // Initialize Auth Service
  await AuthService().initialize();

  // Initialize dependency injection
  await setupServiceLocator();

  // Initialize timezone data
  tz.initializeTimeZones();
  // Initialize and register ThemeCubit immediately after Hive
  GetIt.instance.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
  GetIt.instance.registerLazySingleton<AppRouter>(() => AppRouter());

  // Initialize app lifecycle service
  AppLifecycleService.instance.initialize();
  // Set error handler
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) {
      log('Flutter error: ${details.toString()}');
      // Track Flutter errors in analytics
      AnalyticsService.logError('flutter_error', details.exception.toString());
    }
  };

  // Run the app
  runApp(const StudyBuddyApp());
}

Future<void> _initializeHive() async {
  try {
    // Initialize Hive storage
    await Hive.initFlutter();

    // Initialize Hydrated Storage
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory(
              (await getApplicationDocumentsDirectory()).path),
    );
  } catch (e) {
    log('Failed to initialize Hive storage: $e');
    // Continue with app startup even if storage fails
  }
}

Future<void> _enableFirestoreOffline() async {
  try {
    // Enable Firestore offline persistence
    FirebaseFirestore.instance.settings = const Settings(
      persistenceEnabled: true,
    );
    log('Firestore offline persistence enabled');
  } catch (e) {
    log('Failed to enable Firestore persistence: $e');
    // Continue without offline persistence
  }
}

class StudyBuddyApp extends StatelessWidget {
  const StudyBuddyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance.get<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            title: 'Study Buddy',
            debugShowCheckedModeBanner: false,
            routerConfig: GetIt.instance.get<AppRouter>().router,
            themeMode: themeState.themeMode,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
          );
        },
      ),
    );
  }
}
