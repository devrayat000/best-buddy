import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../auth/auth_service.dart';
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
  bool _isUserCR = false;

  @override
  void initState() {
    super.initState();
    // Initialize notifications when main shell loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeNotifications();
      _initializeNavigationService();
      _checkUserRole();
    });
  }

  void _checkUserRole() async {
    try {
      final isCR = await AuthService().isCurrentUserCR();
      if (mounted) {
        setState(() {
          _isUserCR = isCR;
        });
      }
    } catch (e) {
      // If there's an error, assume user is not CR
      if (mounted) {
        setState(() {
          _isUserCR = false;
        });
      }
    }
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
    if (_isUserCR) {
      // CR users have 4 tabs: Notices, Class Tests, Users, Profile
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
          context.go('/users-list');
          break;
        case 3:
          context.go('/profile');
          break;
      }
    } else {
      // Regular users have 3 tabs: Notices, Class Tests, Profile
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
    } else if (location.startsWith('/users-list')) {
      _selectedIndex = _isUserCR ? 2 : _selectedIndex; // Only CRs have users tab
    } else if (location.startsWith('/profile')) {
      _selectedIndex = _isUserCR ? 3 : 2; // Profile is index 3 for CRs, 2 for regular users
    }
    return NetworkStatusBanner(
      child: Scaffold(
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: _buildNavigationItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavigationItems() {
    final items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.notifications_outlined),
        activeIcon: Icon(Icons.notifications),
        label: 'Notices',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.quiz_outlined),
        activeIcon: Icon(Icons.quiz),
        label: 'Class Tests',
      ),
    ];

    // Add Users tab only for CRs
    if (_isUserCR) {
      items.add(
        const BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          activeIcon: Icon(Icons.people),
          label: 'Users',
        ),
      );
    }

    // Add Profile tab for all users
    items.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        activeIcon: Icon(Icons.person),
        label: 'Profile',
      ),
    );

    return items;
  }
}
