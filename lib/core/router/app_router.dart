import 'dart:developer';
import 'dart:io';

import 'package:best_buddy_flutter/core/cubits/reload_cubit.dart';
import 'package:best_buddy_flutter/features/notices/presentation/pages/delete_notice_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../auth/auth_service.dart';
import '../settings/settings_cubit.dart';
import '../services/analytics_service.dart';
import '../models/notice_model.dart';
import '../models/class_test_model.dart';
import '../../features/auth/presentation/pages/get_started_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/pages/grant_access_page.dart';
import '../../features/notices/notices_screen.dart';
import '../../features/notices/presentation/pages/add_edit_notice_page.dart';
import '../../features/notices/presentation/modals/notice_details_modal.dart';
import '../../features/class_tests/class_tests_screen.dart';
import '../../features/class_tests/presentation/pages/add_edit_class_test_page.dart';
import '../../features/class_tests/presentation/modals/class_test_details_modal.dart';
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
import '../../features/admin/presentation/pages/users_list_page.dart';
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
      observers: [
        AnalyticsService.observer,
      ],
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
                BlocProvider<SettingsCubit>(
                  create: (_) => GetIt.instance.get<SettingsCubit>(),
                ),
                BlocProvider<ReloadCubit>(
                  create: (_) => GetIt.instance.get<ReloadCubit>(),
                ),
              ],
              child: child,
            );
          },
          routes: [
            // Auth routes
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
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      name: state.name,
                      key: state.pageKey,
                      child: const NoticesScreen(),
                      transitionDuration: const Duration(milliseconds: 300),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation.drive(
                            Tween<double>(
                              begin: 0.2,
                              end: 1.0,
                            ),
                          ),
                          child: SlideTransition(
                            // slide from left
                            position: Tween<Offset>(
                              begin: const Offset(-1.0, 0.0),
                              end: Offset.zero,
                            ).animate(CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOut,
                            )),
                            child: child,
                          ),
                        );
                      },
                    );
                  },
                  routes: [
                    // Add notice page
                    GoRoute(
                      path: 'add',
                      name: 'add-notice',
                      pageBuilder: (context, state) {
                        return DialogPage(
                          key: state.pageKey,
                          barrierDismissible: false,
                          builder: (_) => const AddEditNoticePage(),
                        );
                      },
                    ),
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
                      routes: [
                        // Edit notice page
                        GoRoute(
                          path: 'edit',
                          name: 'edit-notice',
                          pageBuilder: (context, state) {
                            final notice = state.extra as NoticeModel?;
                            return DialogPage(
                              key: state.pageKey,
                              barrierDismissible: false,
                              builder: (_) =>
                                  AddEditNoticePage(existingNotice: notice),
                            );
                          },
                        ),
                        GoRoute(
                          path: 'delete',
                          name: 'delete-notice',
                          pageBuilder: (context, state) {
                            final noticeId = state.pathParameters['id']!;
                            return DialogPage(
                              key: state.pageKey,
                              name: state.name,
                              barrierDismissible: false,
                              builder: (_) => DeleteNoticeDialog(id: noticeId),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                GoRoute(
                  path: '/class-tests',
                  name: 'class-tests',
                  pageBuilder: (context, state) {
                    // slide from left if navigating from /profile, or from right if navgating from /notices
                    final isFromProfile = state.extra is Map<String, dynamic> &&
                        (state.extra as Map<String, dynamic>)['from'] ==
                            'profile';
                    return CustomTransitionPage(
                      name: state.name,
                      key: state.pageKey,
                      child: const ClassTestsScreen(),
                      transitionDuration: const Duration(milliseconds: 300),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation.drive(
                            Tween<double>(
                              begin: 0.2,
                              end: 1.0,
                            ),
                          ),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: isFromProfile
                                  ? const Offset(-1.0, 0.0)
                                  : const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOut,
                            )),
                            child: child,
                          ),
                        );
                      },
                    );
                  },
                  routes: [
                    // Add class test page
                    GoRoute(
                      path: 'add',
                      name: 'add-class-test',
                      pageBuilder: (context, state) {
                        return DialogPage(
                          key: state.pageKey,
                          barrierDismissible: false,
                          builder: (_) => const AddEditClassTestPage(),
                        );
                      },
                    ),
                    // Edit class test page
                    GoRoute(
                      path: 'edit/:classTestId',
                      name: 'edit-class-test',
                      pageBuilder: (context, state) {
                        final classTest = state.extra as ClassTestModel?;
                        return DialogPage(
                          key: state.pageKey,
                          barrierDismissible: false,
                          builder: (_) =>
                              AddEditClassTestPage(classTest: classTest),
                        );
                      },
                    ),
                    // Class test detail modal
                    GoRoute(
                      path: ':id',
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
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      name: state.name,
                      key: state.pageKey,
                      child: const ProfilePage(),
                      transitionDuration: const Duration(milliseconds: 300),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation.drive(
                            Tween<double>(
                              begin: 0.2,
                              end: 1.0,
                            ),
                          ),
                          child: SlideTransition(
                            // slide from right
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOut,
                            )),
                            child: child,
                          ),
                        );
                      },
                    );
                  },
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
                    GoRoute(
                      path: '/users',
                      name: 'users-list',
                      builder: (context, state) => const UsersListPage(),
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

    // Check if services are initialized by checking Firebase Auth
    try {
      final authService = AuthService();
      final isAuthenticated = authService.isAuthenticated;

      final isOnGetStartedPage = state.matchedLocation == '/';
      final isOnAuthPage = ['/login', '/register', '/grant-access']
          .contains(state.matchedLocation);

      // If still on splash after initialization, redirect based on auth state
      if (isOnSplashPage) {
        log('🔄 Redirecting from splash page, authenticated: $isAuthenticated');
        return isAuthenticated ? '/notices' : '/';
      }

      // If authenticated and on get-started or auth pages, redirect to notices
      if (isAuthenticated && (isOnGetStartedPage || isOnAuthPage)) {
        log('Redirecting authenticated user from ${state.matchedLocation} to /notices');
        return '/notices';
      }

      // If unauthenticated and not on get-started or auth pages, redirect to get-started
      if (!isAuthenticated && !isOnGetStartedPage && !isOnAuthPage) {
        log('Redirecting unauthenticated user from ${state.matchedLocation} to /');
        return '/';
      }

      log('No redirect needed for state: ${state.fullPath}, authenticated: $isAuthenticated');
      return null;
    } catch (e) {
      log('❌ Error checking auth state: $e');
      // Services not initialized yet, redirect to splash (unless already there)
      return isOnSplashPage ? null : '/splash';
    }
  }
}
