import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../auth/data/graphql/auth_queries.graphql.dart';
import '../widgets/info_card.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        elevation: 0,
      ),
      body: Query$AuthenticatedItem$Widget(
        options: Options$Query$AuthenticatedItem(),
        builder: (result, {refetch, fetchMore}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (result.hasException) {
            return _buildErrorState(context, result.exception.toString());
          }

          final user = result.parsedData?.profile;

          if (user is Query$AuthenticatedItem$profile$$User) {
            return _buildPersonalInfoContent(context, user);
          }

          return _buildErrorState(context, 'No profile data available');
        },
      ),
    );
  }

  Widget _buildPersonalInfoContent(
    BuildContext context,
    Query$AuthenticatedItem$profile$$User user,
  ) {
    final studentId = user.email.split('@').first;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Header Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Theme.of(context).colorScheme.primary.withAlpha(30),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          user.role?.name ?? 'Student',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Contact Information
          Text(
            'Contact Information',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 12),

          InfoCard(
            icon: Icons.email_outlined,
            title: 'Email Address',
            value: user.email,
            copyable: true,
          ),

          const SizedBox(height: 8),

          InfoCard(
            icon: Icons.badge_outlined,
            title: 'Student ID',
            value: studentId,
            copyable: true,
          ),

          const SizedBox(height: 24),

          // Account Information
          Text(
            'Account Information',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 12),

          InfoCard(
            icon: Icons.school_outlined,
            title: 'Role',
            value: user.role?.name ?? 'Student',
          ),

          if (user.createdAt != null) ...[
            const SizedBox(height: 8),
            InfoCard(
              icon: Icons.calendar_today_outlined,
              title: 'Member Since',
              value: DateFormat.yMMMd().format(user.createdAt!),
            ),
          ],

          const SizedBox(height: 8),

          InfoCard(
            icon: Icons.verified_user_outlined,
            title: 'Account Status',
            value: 'Active',
            valueColor: Colors.green,
          ),

          const SizedBox(height: 32),

          // Additional Actions
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.edit_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('Edit Profile'),
                  subtitle: const Text('Update your personal information'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Profile editing coming soon!')),
                    );
                  },
                ),
                Divider(
                  height: 1,
                  indent: 56,
                  color: Theme.of(context).colorScheme.outline.withAlpha(50),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('Change Password'),
                  subtitle: const Text('Update your account password'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Password change coming soon!')),
                    );
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Error loading profile',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
