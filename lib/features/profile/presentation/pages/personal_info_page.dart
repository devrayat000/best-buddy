import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../auth/data/graphql/auth_queries.graphql.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Info'),
      ),
      body: Query$AuthenticatedItem$Widget(
        options: Options$Query$AuthenticatedItem(),
        builder: (result, {refetch, fetchMore}) {
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
            final userRole = user.role?.name ?? 'Unknown Role';
            final createdAt = user.createdAt;
            final studentId =
                userEmail.split('@').first; // Extract student ID from email

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Personal Information',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoRow('Name', userName),
                          const SizedBox(height: 24),
                          _buildInfoRow('Email', userEmail),
                          const SizedBox(height: 24),
                          _buildInfoRow('Student ID', studentId),
                          const SizedBox(height: 24),
                          _buildInfoRow('Role', userRole),
                          if (createdAt != null) ...[
                            const SizedBox(height: 24),
                            _buildInfoRow(
                              'Member Since',
                              DateFormat.yMMMd().format(createdAt),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return Center(
            child: Text(
              'No profile data available',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
