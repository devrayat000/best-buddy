import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../auth/auth_cubit.dart';
import '../../features/auth/presentation/pages/get_started_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/pages/grant_access_page.dart';
import '../../features/notices/presentation/pages/notices_page.dart';
import '../../features/class_tests/presentation/pages/class_tests_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/profile/presentation/pages/personal_info_page.dart';
import '../../features/notices/presentation/modals/notice_details_modal.dart';
import '../../features/class_tests/presentation/modals/class_test_details_modal.dart';
import '../widgets/main_shell.dart';

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
      initialLocation: '/',
      redirect: _redirect,
      routes: [
        // Auth shell route
        ShellRoute(
          builder: (context, state, child) => child,
          routes: [
            // Initial route
            GoRoute(
              path: '/',
              name: 'get-started',
              builder: (context, state) => const GetStartedPage(),
            ),

            // Auth routes
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
        ),

        // Main app shell with tabs
        ShellRoute(
          builder: (context, state, child) => MainShell(child: child),
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
                      builder: (_) => NoticeDetailsModal(noticeId: noticeId),
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
              ],
            ),
          ],
        ),
      ],
    );
  }
  String? _redirect(BuildContext context, GoRouterState state) {
    final authCubit = GetIt.instance<AuthCubit>();
    final authState = authCubit.state;

    final isOnGetStartedPage = state.matchedLocation == '/';
    final isOnAuthPage = ['/login', '/register', '/grant-access']
        .contains(state.matchedLocation);

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
  }
}
