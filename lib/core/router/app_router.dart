import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../auth/auth_cubit.dart';
import '../settings/settings_cubit.dart';
import '../../features/auth/presentation/pages/get_started_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/pages/grant_access_page.dart';
import '../../features/notices/presentation/pages/notices_page.dart';
import '../../features/class_tests/presentation/pages/class_tests_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/profile/presentation/pages/personal_info_page.dart';
import '../../features/profile/presentation/pages/settings_page.dart';
import '../../features/profile/presentation/pages/help_page.dart';
import '../../features/profile/presentation/pages/licenses_page.dart';
import '../../features/profile/presentation/dialogs/about_dialog_page.dart';
import '../../features/profile/presentation/dialogs/theme_dialog_page.dart';
import '../../features/profile/presentation/dialogs/language_dialog_page.dart';
import '../../features/profile/presentation/dialogs/logout_dialog_page.dart';
import '../../features/profile/presentation/dialogs/help_dialog_page.dart';
import '../../features/notices/presentation/modals/notice_details_modal.dart';
import '../../features/class_tests/presentation/modals/class_test_details_modal.dart';
import '../widgets/main_shell.dart';
import '../splash/splash_screen.dart';

/// A dialog page with Material entrance and exit animations, modal barrier color,
/// and modal barrier behavior (dialog is dismissible with a tap on the barrier).
class DialogPage<T> extends Page<T> {
  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;

  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    if (Platform.isAndroid) {
      return DialogRoute<T>(
        context: context,
        settings: this,
        builder: builder,
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        themes: themes,
      );
    } else if (Platform.isIOS) {
      return CupertinoDialogRoute<T>(
        context: context,
        settings: this,
        builder: builder,
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
      );
    } else {
      return RawDialogRoute<T>(
        settings: this,
        pageBuilder: (context, animation, secondaryAnimation) =>
            builder(context),
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
      );
    }
  }
}

class AppRouter {
  late final GoRouter _router;

  GoRouter get router => _router;
  AppRouter() {
    _router = GoRouter(
      initialLocation: '/splash',
      redirect: _redirect,
      routes: [
        // Splash screen route
        GoRoute(
          path: '/splash',
          name: 'splash',
          builder: (context, state) => const SplashScreen(),
        ), // Main app shell with cubit providers
        ShellRoute(
          builder: (context, state, child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<AuthCubit>.value(
                  value: GetIt.instance<AuthCubit>(),
                ),
                BlocProvider<SettingsCubit>.value(
                  value: GetIt.instance<SettingsCubit>(),
                ),
              ],
              child: GraphQLProvider(
                client: GetIt.instance.get<ValueNotifier<GraphQLClient>>(),
                child: child,
              ),
            );
          },
          routes: [
            // Auth routes
            ShellRoute(
              routes: [
                GoRoute(
                  path: '/',
                  name: 'get-started',
                  builder: (context, state) => const GetStartedPage(),
                ),
                GoRoute(
                  path: '/login',
                  name: 'login',
                  builder: (context, state) => const LoginPage(),
                ),
                GoRoute(
                  path: '/register',
                  name: 'register',
                  builder: (context, state) => const RegisterPage(),
                ),
                GoRoute(
                  path: '/grant-access',
                  name: 'grant-access',
                  builder: (context, state) {
                    final jwt = state.uri.queryParameters['jwt']!;
                    final userId = state.uri.queryParameters['userId']!;
                    final email = state.uri.queryParameters['email']!;
                    return GrantAccessPage(
                      jwt: jwt,
                      userId: userId,
                      email: email,
                    );
                  },
                ),
              ],
            ), // Main app shell with tabs
            ShellRoute(
              builder: (context, state, child) {
                return MainShell(child: child);
              },
              routes: [
                // Tab routes
                GoRoute(
                  path: '/notices',
                  name: 'notices',
                  builder: (context, state) => const NoticesPage(),
                  routes: [
                    // Notice detail modal
                    GoRoute(
                      path: ':id',
                      name: 'notice-detail',
                      pageBuilder: (context, state) {
                        final noticeId = state.pathParameters['id']!;
                        return DialogPage(
                          key: state.pageKey,
                          builder: (_) =>
                              NoticeDetailsModal(noticeId: noticeId),
                        );
                      },
                    ),
                  ],
                ),
                GoRoute(
                  path: '/class-tests',
                  name: 'class-tests',
                  builder: (context, state) => const ClassTestsPage(),
                  routes: [
                    // Class test detail modal
                    GoRoute(
                      path: '/:id',
                      name: 'class-test-detail',
                      pageBuilder: (context, state) {
                        final classTestId = state.pathParameters['id']!;
                        return DialogPage(
                          builder: (_) =>
                              ClassTestDetailsModal(classTestId: classTestId),
                        );
                      },
                    ),
                  ],
                ),
                GoRoute(
                  path: '/profile',
                  name: 'profile',
                  builder: (context, state) => const ProfilePage(),
                  routes: [
                    GoRoute(
                      path: '/personal',
                      name: 'personal-info',
                      builder: (context, state) => const PersonalInfoPage(),
                    ),
                    GoRoute(
                      path: '/settings',
                      name: 'settings',
                      builder: (context, state) => const SettingsPage(),
                    ),
                    GoRoute(
                      path: '/help',
                      name: 'help',
                      builder: (context, state) => const HelpPage(),
                    ),
                    GoRoute(
                      path: '/licenses',
                      name: 'licenses',
                      builder: (context, state) => const LicensesPage(),
                    ),
                    // Dialog routes
                    GoRoute(
                      path: '/about',
                      name: 'about-dialog',
                      pageBuilder: (context, state) => DialogPage(
                        key: state.pageKey,
                        builder: (_) => const AboutDialogPage(),
                      ),
                    ),
                    GoRoute(
                      path: '/theme',
                      name: 'theme-dialog',
                      pageBuilder: (context, state) => DialogPage(
                        key: state.pageKey,
                        builder: (_) => const ThemeDialogPage(),
                      ),
                    ),
                    GoRoute(
                      path: '/language',
                      name: 'language-dialog',
                      pageBuilder: (context, state) => DialogPage(
                        key: state.pageKey,
                        builder: (_) => const LanguageDialogPage(),
                      ),
                    ),
                    GoRoute(
                      path: '/logout',
                      name: 'logout-dialog',
                      pageBuilder: (context, state) => DialogPage(
                        key: state.pageKey,
                        builder: (_) => const LogoutDialogPage(),
                      ),
                    ),
                    GoRoute(
                      path: '/help-dialog',
                      name: 'help-dialog',
                      pageBuilder: (context, state) => DialogPage(
                        key: state.pageKey,
                        builder: (_) => const HelpDialogPage(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
  String? _redirect(BuildContext context, GoRouterState state) {
    final isOnSplashPage = state.matchedLocation == '/splash';

    // Check if services are initialized by checking if AuthCubit is registered
    try {
      final authCubit = GetIt.instance<AuthCubit>();
      final authState = authCubit.state;

      final isOnGetStartedPage = state.matchedLocation == '/';
      final isOnAuthPage = ['/login', '/register', '/grant-access']
          .contains(state.matchedLocation);

      // If still on splash after initialization, redirect based on auth state
      if (isOnSplashPage) {
        return authState is AuthAuthenticated ? '/notices' : '/';
      }

      // If authenticated and on get-started or auth pages, redirect to notices
      if (authState is AuthAuthenticated &&
          (isOnGetStartedPage || isOnAuthPage)) {
        return '/notices';
      }

      // If unauthenticated and not on get-started or auth pages, redirect to get-started
      if (authState is AuthUnauthenticated &&
          !isOnGetStartedPage &&
          !isOnAuthPage) {
        return '/';
      }

      return null;
    } catch (e) {
      // Services not initialized yet, redirect to splash (unless already there)
      return isOnSplashPage ? null : '/splash';
    }
  }
}
