import 'package:best_buddy_flutter/core/models/user_model.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/auth/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_stats_card.dart';
import '../widgets/profile_menu_section.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    // Log screen visit
    AnalyticsService.logScreenView('profile_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: AuthService().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoadingView.page();
          }

          final user = snapshot.data;
          if (user == null) {
            return const ErrorView(
              message: 'User not authenticated',
              title: 'Authentication Error',
            );
          }

          return _buildProfileContent(context, user);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AnalyticsService.logCustomEvent('logout_button_tapped', {});
          context.push('/profile/logout');
        },
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        foregroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  }

  Widget _buildProfileContent(
    BuildContext context,
    User user, // Firebase User
  ) {
    return CustomScrollView(
      slivers: [
        // Profile Header
        SliverToBoxAdapter(
          child: ProfileHeader(
            name: user.displayName ?? user.email?.split('@')[0] ?? 'User',
            email: user.email ?? '',
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),

        // Stats Card
        SliverToBoxAdapter(
          child: FirestoreBuilder(
              ref: usersRef.doc(user.uid),
              builder: (context, snapshot, child) {
                return ProfileStatsCard(
                  role: snapshot.data?.data?.role.name ??
                      'student', // Default role, can be enhanced later
                  memberSince: user.metadata.creationTime,
                );
              }),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        // Menu Section
        const SliverToBoxAdapter(
          child: ProfileAccountSection(),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        // Menu Section
        const SliverToBoxAdapter(
          child: ProfileAppSection(),
        ), // Bottom spacing for FAB
        const SliverToBoxAdapter(
          child: SizedBox(height: 100),
        ),
      ],
    );
  }
}
