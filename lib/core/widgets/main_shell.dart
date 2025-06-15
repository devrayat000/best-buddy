import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../auth/auth_cubit.dart';
import '../services/firebase_messaging_service.dart';
import '../services/notification_navigation_service.dart';
import 'network_status_banner.dart';

class MainShell extends StatefulWidget {
  final Widget child;

  const MainShell({
    super.key,
    required this.child,
  });

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    // Initialize notifications when main shell loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeNotifications();
      _initializeNavigationService();
    });
  }

  void _initializeNotifications() {
    final authState = context.read<AuthCubit>().state;
    if (authState is AuthAuthenticated) {
      // Initialize Firebase Messaging Service if user is authenticated
      GetIt.instance<FirebaseMessagingService>().initialize();
    }
  }

  void _initializeNavigationService() {
    // Initialize the navigation service with current context and router
    final router = GoRouter.of(context);
    GetIt.instance<NotificationNavigationService>().initialize(context, router);
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        context.go('/notices');
        break;
      case 1:
        context.go(
          '/class-tests',
          extra: {'from': _selectedIndex == 0 ? 'notices' : 'profile'},
        );
        break;
      case 2:
        context.go('/profile');
        break;
      case 4: // Settings (NavigationRail only)
        context.go('/profile/settings');
        break;
      case 5: // Help (NavigationRail only)
        context.go('/profile/settings');
        break;
      case 6: // About (NavigationRail only)
        context.go('/profile/about');
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Update selected index based on current route
    final location = GoRouterState.of(context).matchedLocation;
    if (location.startsWith('/notices')) {
      _selectedIndex = 0;
    } else if (location.startsWith('/class-tests')) {
      _selectedIndex = 1;
    } else if (location.startsWith('/profile')) {
      if (location.startsWith('/profile/settings')) {
        _selectedIndex = 4;
      } else if (location.startsWith('/profile/settings')) {
        _selectedIndex = 5;
      } else if (location.startsWith('/profile/about')) {
        _selectedIndex = 6;
      } else {
        _selectedIndex = 2;
      }
    }

    return NetworkStatusBanner(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWideScreen = constraints.maxWidth > 600;

          if (isWideScreen) {
            return Scaffold(
              body: SafeArea(
                child: Row(
                  children: [
                    NavigationRail(
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: _onItemTapped,
                      labelType: NavigationRailLabelType.all,
                      destinations: const [
                        NavigationRailDestination(
                          icon: Icon(Icons.notifications_outlined),
                          selectedIcon: Icon(Icons.notifications),
                          label: Text('Notices'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.quiz_outlined),
                          selectedIcon: Icon(Icons.quiz),
                          label: Text('Class Tests'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.person_outline),
                          selectedIcon: Icon(Icons.person),
                          label: Text('Profile'),
                        ),
                        NavigationRailDestination(
                          icon: SizedBox(height: 1), // dummy
                          label: SizedBox.shrink(),
                          disabled: true,
                          padding: EdgeInsets.all(0),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.settings_outlined),
                          selectedIcon: Icon(Icons.settings),
                          label: Text('Settings'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.notifications_outlined),
                          selectedIcon: Icon(Icons.help),
                          label: Text('Notifications'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.info_outline),
                          selectedIcon: Icon(Icons.info),
                          label: Text('About'),
                        ),
                      ],
                    ),
                    const VerticalDivider(thickness: 1, width: 1),
                    Expanded(child: widget.child),
                  ],
                ),
              ),
            );
          } else {
            return Scaffold(
              body: widget.child,
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                type: BottomNavigationBarType.fixed,
                enableFeedback: true,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_outlined),
                    activeIcon: Icon(Icons.notifications),
                    label: 'Notices',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.quiz_outlined),
                    activeIcon: Icon(Icons.quiz),
                    label: 'Class Tests',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    activeIcon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
