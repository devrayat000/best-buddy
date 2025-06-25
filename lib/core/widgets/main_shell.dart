import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

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
    // Initialize Firebase Messaging Service for authenticated users
    GetIt.instance<FirebaseMessagingService>().initialize();
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
      _selectedIndex = 2;
    }
    return NetworkStatusBanner(
      child: Scaffold(
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
      ),
    );
  }
}
