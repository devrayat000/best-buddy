import 'package:best_buddy_flutter/core/models/user_model.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/auth/auth_service.dart';
import '../widgets/info_card.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        elevation: 0,
      ),
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

          return _buildPersonalInfoContent(context, user);
        },
      ),
    );
  }

  Widget _buildPersonalInfoContent(
    BuildContext context,
    User user, // Firebase User
  ) {
    final studentId = user.email?.split('@').first ?? 'N/A';

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
                          user.displayName ??
                              user.email?.split('@')[0] ??
                              'User',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 4),
                        FirestoreBuilder(
                            ref: usersRef.doc(user.uid),
                            builder: (context, snapshot, child) {
                              return Text(
                                snapshot.data?.data?.role.name ??
                                    'student', // Default role for Firebase users
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                              );
                            }),
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
            value: user.email ?? 'N/A',
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
            value: 'Student', // Default role for Firebase users
          ),

          if (user.metadata?.creationTime != null) ...[
            const SizedBox(height: 8),
            InfoCard(
              icon: Icons.calendar_today_outlined,
              title: 'Member Since',
              value: DateFormat.yMMMd().format(user.metadata!.creationTime!),
            ),
          ],

          const SizedBox(height: 8),

          const InfoCard(
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
}
