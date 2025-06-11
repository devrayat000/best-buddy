import 'package:best_buddy_flutter/core/auth/session_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

import '../auth/auth_cubit.dart';
import '../graphql/graphql_client.dart';
import '../services/connectivity_service.dart';
import '../services/firebase_messaging_service.dart';
import '../services/notification_navigation_service.dart';
import '../settings/settings_cubit.dart';
import '../storage/storage_service.dart';

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Core
  sl.registerLazySingleton<StorageService>(() => HiveStorageService());
  await sl<StorageService>().init();
  // Connectivity
  sl.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
  await sl<ConnectivityService>().initialize();
  // Firebase Messaging
  sl.registerLazySingleton<FirebaseMessagingService>(
      () => FirebaseMessagingService());
  await sl<FirebaseMessagingService>().initialize();

  // Notification Navigation
  sl.registerLazySingleton<NotificationNavigationService>(
      () => NotificationNavigationService());

  // GraphQL
  sl.registerLazySingleton<ValueNotifier<GraphQLClient>>(
      () => createGraphQLClient(sl<StorageService>()));

  sl.registerLazySingleton(() => SessionService(
        sl<ValueNotifier<GraphQLClient>>().value,
        sl<StorageService>(),
      ));

  // Auth
  sl.registerLazySingleton(() => AuthCubit(
        sl<SessionService>(),
        sl<StorageService>(),
      ));
  await sl<AuthCubit>().init(); // Initialize auth state

  // Settings
  sl.registerLazySingleton(() => SettingsCubit());
}
