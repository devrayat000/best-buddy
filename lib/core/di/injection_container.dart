import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

import '../auth/auth_cubit.dart';
import '../graphql/graphql_client.dart';
import '../services/connectivity_service.dart';
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

  // Auth
  sl.registerLazySingleton(() => AuthCubit());
  await sl<AuthCubit>().init(); // Initialize auth state

  // Settings
  sl.registerLazySingleton(() => SettingsCubit());

  // GraphQL
  sl.registerLazySingleton<ValueNotifier<GraphQLClient>>(
      () => createGraphQLClient(sl<StorageService>()));
}
