import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/data/graphql/auth_queries.graphql.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_stats_card.dart';
import '../widgets/profile_menu_section.dart';
import '../../../../core/widgets/error_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Query$AuthenticatedItem$Widget(
        options: Options$Query$AuthenticatedItem(),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (result.hasException) {
            return ErrorView(
              message: result.exception.toString(),
              title: 'Error loading profile',
              onRetry: () => refetch?.call(),
            );
          }

          final user = result.parsedData?.profile;

          if (user is Query$AuthenticatedItem$profile$$User) {
            return _buildProfileContent(context, user);
          }

          return ErrorView(
            message: 'Unexpected user type',
            title: 'Error loading profile',
            onRetry: () => refetch?.call(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/profile/logout'),
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        foregroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  }

  Widget _buildProfileContent(
    BuildContext context,
    Query$AuthenticatedItem$profile$$User user,
  ) {
    return CustomScrollView(
      slivers: [
        // Profile Header
        SliverToBoxAdapter(
          child: ProfileHeader(
            name: user.name,
            email: user.email,
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),

        // Stats Card
        SliverToBoxAdapter(
          child: ProfileStatsCard(
            role: user.role?.name ?? 'Student',
            memberSince: user.createdAt,
          ),
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
