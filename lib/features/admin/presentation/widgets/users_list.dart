import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class UsersList extends StatelessWidget {
  final UserRole selectedFilter;

  const UsersList({
    super.key,
    required this.selectedFilter,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<UserModel>>(
      stream: usersRef.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingView(message: 'Loading users...');
        }

        if (snapshot.hasError) {
          return ErrorView(
            message: 'Error loading users: ${snapshot.error}',
            onRetry: () => {},
          );
        }

        final allUsers = snapshot.data?.docs.map((doc) => doc.data()).toList() ?? [];
        final filteredUsers = _filterUsers(allUsers);

        if (filteredUsers.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_outline,
                  size: 64,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  'No users found',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  _getEmptyMessage(),
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: filteredUsers.length,
          itemBuilder: (context, index) {
            final user = filteredUsers[index];
            return _buildUserCard(context, user);
          },
        );
      },
    );
  }

  List<UserModel> _filterUsers(List<UserModel> users) {
    if (selectedFilter == UserRole.student) {
      return users; // Show all when "All" is selected (default)
    }
    return users.where((user) => user.role == selectedFilter).toList();
  }

  String _getEmptyMessage() {
    switch (selectedFilter) {
      case UserRole.cr:
        return 'No CRs found in the system';
      case UserRole.student:
        return 'No users found in the system';
    }
  }

  Widget _buildUserCard(BuildContext context, UserModel user) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: user.role == UserRole.cr
              ? Colors.orange[100]
              : Colors.blue[100],
          child: Icon(
            user.role == UserRole.cr
                ? Icons.admin_panel_settings
                : Icons.school,
            color: user.role == UserRole.cr
                ? Colors.orange[700]
                : Colors.blue[700],
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(user.email),
            const SizedBox(height: 4),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: user.role == UserRole.cr
                        ? Colors.orange[100]
                        : Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    user.role == UserRole.cr ? 'CR' : 'Student',
                    style: TextStyle(
                      fontSize: 12,
                      color: user.role == UserRole.cr
                          ? Colors.orange[700]
                          : Colors.blue[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                if (user.createdAt != null)
                  Text(
                    'Joined ${_formatDate(user.createdAt!)}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
              ],
            ),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;

    if (difference == 0) {
      return 'today';
    } else if (difference == 1) {
      return 'yesterday';
    } else if (difference < 7) {
      return '$difference days ago';
    } else if (difference < 30) {
      final weeks = (difference / 7).floor();
      return weeks == 1 ? '1 week ago' : '$weeks weeks ago';
    } else if (difference < 365) {
      final months = (difference / 30).floor();
      return months == 1 ? '1 month ago' : '$months months ago';
    } else {
      final years = (difference / 365).floor();
      return years == 1 ? '1 year ago' : '$years years ago';
    }
  }
}
