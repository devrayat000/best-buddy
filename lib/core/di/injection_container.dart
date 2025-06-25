import 'package:get_it/get_it.dart';

import '../auth/firebase_auth_service.dart';
import '../cubits/reload_cubit.dart';
import '../services/connectivity_service.dart';
import '../services/firebase_notification_service.dart';
import '../services/notification_navigation_service.dart';
import '../settings/settings_cubit.dart';
import '../storage/storage_service.dart';
import '../../features/notices/data/notices_firebase_service.dart';
import '../../features/notices/cubit/notices_cubit.dart';
import '../../features/class_tests/data/class_tests_firebase_service.dart';
import '../../features/class_tests/cubit/class_tests_cubit.dart';

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Core
  sl.registerLazySingleton<StorageService>(() => HiveStorageService());
  await sl<StorageService>().init();
  
  // Connectivity
  sl.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
  await sl<ConnectivityService>().initialize();

  // Notification Navigation
  sl.registerLazySingleton<NotificationNavigationService>(
      () => NotificationNavigationService());

  // Firebase Auth Service
  sl.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());

  // Firebase Notification Service
  sl.registerLazySingleton<FirebaseNotificationService>(
      () => FirebaseNotificationService());

  // Firebase Data Services
  sl.registerLazySingleton<NoticesFirebaseService>(
      () => NoticesFirebaseService());
  sl.registerLazySingleton<ClassTestsFirebaseService>(
      () => ClassTestsFirebaseService());

  // Feature Cubits
  sl.registerFactory(() => NoticesCubit(sl<NoticesFirebaseService>()));
  sl.registerFactory(() => ClassTestsCubit(sl<ClassTestsFirebaseService>()));

  // Reload Cubit for notifications
  sl.registerLazySingleton(() => ReloadCubit());

  // Settings
  sl.registerLazySingleton(() => SettingsCubit());
}
