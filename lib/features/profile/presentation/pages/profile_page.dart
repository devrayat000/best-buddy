import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../auth/data/graphql/auth_mutations.graphql.dart';
import '../../../auth/data/graphql/auth_queries.graphql.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Query$AuthenticatedItem$Widget(
        options: Options$Query$AuthenticatedItem(),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (result.hasException) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(
                    'Error loading profile',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    result.exception.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }

          final user = result.parsedData?.profile;

          if (user is Query$AuthenticatedItem$profile$$User) {
            final userName = user.name;
            final userEmail = user.email;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Profile Card
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          userName.isNotEmpty ? userName[0].toUpperCase() : 'U',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(userName),
                      subtitle: Text(userEmail),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        context.push('/profile/personal');
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Personal Info Section
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.person),
                          title: const Text('Personal Info'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            context.push('/profile/personal');
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.settings),
                          title: const Text('Account'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            // Handle account settings
                          },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),

                  // Logout Button
                  FilledButton(
                    onPressed: () {
                      _showLogoutDialog(context);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.errorContainer,
                      foregroundColor: Theme.of(context).colorScheme.error,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text('Logout'),
                  ),
                ],
              ),
            );
          }

          return Center(
            child: Text(
              'Unexpected user type',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          );
        },
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            Mutation$EndSession$Widget(
                options: WidgetOptions$Mutation$EndSession(
                  onCompleted: (data, result) {
                    context.read<AuthCubit>().logout();
                  },
                  onError: (error) {
                    // Even if logout fails on server, clear local state
                    context.read<AuthCubit>().logout();
                  },
                ),
                builder: (runMutation, result) {
                  return FilledButton(
                    onPressed: () {
                      runMutation();
                      Navigator.of(context).pop();
                    },
                    child: result?.isLoading == true
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Logout'),
                  );
                }),
          ],
        );
      },
    );
  }
}
