import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/auth/auth_cubit.dart';
import 'core/di/injection_container.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  await initHiveAdapters(); // Initialize HydratedBloc storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
        (await getApplicationDocumentsDirectory()).path),
  );

  // Initialize dependencies
  await setupServiceLocator();

  runApp(const StudyBuddyApp());
}

Future<void> initHiveAdapters() async {
  // Register Hive adapters here once they are generated
  // Hive.registerAdapter(UserModelAdapter());
  // Hive.registerAdapter(SessionModelAdapter());
}

class StudyBuddyApp extends StatelessWidget {
  const StudyBuddyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => GetIt.instance.get<AuthCubit>(),
      child: GraphQLProvider(
        client: GetIt.instance.get<ValueNotifier<GraphQLClient>>(),
        child: MaterialApp.router(
          title: 'Study Buddy',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          routerConfig: GetIt.instance.get<AppRouter>().router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
