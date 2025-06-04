import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:logger/logger.dart';

import '../auth/auth_cubit.dart';
import '../graphql/graphql_client.dart';
import '../router/app_router.dart';
import '../storage/storage_service.dart';

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // External
  sl.registerLazySingleton(() => Logger());
  sl.registerLazySingleton(() => Dio());
  // Core
  sl.registerLazySingleton<StorageService>(() => HiveStorageService());
  await sl<StorageService>().init();
  sl.registerLazySingleton(() => AppRouter());
  // Auth
  sl.registerLazySingleton(() => AuthCubit());
  await sl<AuthCubit>().init(); // Initialize auth state

  // GraphQL
  sl.registerLazySingleton<ValueNotifier<GraphQLClient>>(
      () => createGraphQLClient(sl<StorageService>()));

  // Register the GraphQLClient itself for dependencies that need it directly
  sl.registerLazySingleton<GraphQLClient>(
      () => sl<ValueNotifier<GraphQLClient>>().value);
}
