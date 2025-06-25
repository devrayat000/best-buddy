import 'package:flutter/material.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/services/user_service.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  final UserService _userService = UserService();
  UserRole _selectedFilter = UserRole.student;
  Map<String, int>? _stats;

  @override
  void initState() {
    super.initState();
    _loadStats();
  }

  Future<void> _loadStats() async {
    try {
      final stats = await _userService.getUserRoleStats();
      if (mounted) {
        setState(() {
          _stats = stats;
        });
      }
    } catch (e) {
      // Handle error silently for stats
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _userService.isCurrentUserCR(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: LoadingView(message: 'Checking permissions...'),
          );
        }
        
        if (snapshot.hasError || !snapshot.hasData || !snapshot.data!) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Unauthorized'),
            ),
            body: const ErrorView(
              message: 'You do not have permission to access this page. CR role required.',
            ),
          );
        }
        
        return _buildUsersPage();
      },
    );
  }

  Widget _buildUsersPage() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Users'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: _buildFilterChips(),
        ),
      ),
      body: Column(
        children: [
          if (_stats != null) _buildStatsCard(),
          Expanded(child: _buildUsersList()),
        ],
      ),
    );
  }

  Widget _buildFilterChips() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          _buildFilterChip('All', null),
          const SizedBox(width: 8),
          _buildFilterChip('Students', UserRole.student),
          const SizedBox(width: 8),
          _buildFilterChip('CRs', UserRole.cr),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, UserRole? role) {
    final isSelected = _selectedFilter == role || (role == null && _selectedFilter == UserRole.student);
    
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        if (selected) {
          setState(() {
            _selectedFilter = role ?? UserRole.student;
          });
        }
      },
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      checkmarkColor: Theme.of(context).colorScheme.onPrimaryContainer,
    );
  }

  Widget _buildStatsCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                'Total Users',
                _stats!['total'].toString(),
                Icons.people,
                Theme.of(context).colorScheme.primary,
              ),
              _buildStatItem(
                'Students',
                _stats!['students'].toString(),
                Icons.school,
                Colors.blue,
              ),
              _buildStatItem(
                'CRs',
                _stats!['crs'].toString(),
                Icons.admin_panel_settings,
                Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildUsersList() {
    return StreamBuilder<List<UserModel>>(
      stream: _userService.getAllUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingView.page();
        }

        if (snapshot.hasError) {
          return ErrorView(
            title: 'Error Loading Users',
            message: 'Failed to load users: ${snapshot.error}',
            onRetry: () => setState(() {}),
          );
        }

        final allUsers = snapshot.data ?? [];
        
        // Filter users based on selected filter
        List<UserModel> filteredUsers;
        if (_selectedFilter == UserRole.student) {
          // Show all users when "Students" filter is selected (backwards compatibility)
          filteredUsers = allUsers;
        } else {
          filteredUsers = allUsers.where((user) => user.role == _selectedFilter).toList();
        }

        if (filteredUsers.isEmpty) {
          return _buildEmptyState();
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: filteredUsers.length,
          itemBuilder: (context, index) {
            final user = filteredUsers[index];
            return _buildUserCard(user);
          },
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 64,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            'No users found',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'There are no users matching the current filter.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildUserCard(UserModel user) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: user.role == UserRole.cr 
              ? Theme.of(context).colorScheme.primaryContainer
              : Theme.of(context).colorScheme.secondaryContainer,
          child: Icon(
            user.role == UserRole.cr ? Icons.admin_panel_settings : Icons.person,
            color: user.role == UserRole.cr 
                ? Theme.of(context).colorScheme.onPrimaryContainer
                : Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        ),
        title: Text(
          user.name,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(user.email),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: user.role == UserRole.cr
                    ? Colors.orange.withAlpha(50)
                    : Colors.blue.withAlpha(50),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                user.role == UserRole.cr ? 'Class Representative' : 'Student',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: user.role == UserRole.cr ? Colors.orange : Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            if (user.createdAt != null) ...[
              const SizedBox(height: 4),
              Text(
                'Joined: ${_formatDate(user.createdAt!)}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
            ],
          ],
        ),
        trailing: user.role == UserRole.cr
            ? Icon(
                Icons.verified,
                color: Colors.orange,
                size: 20,
              )
            : null,
        onTap: () => _showUserDetails(user),
      ),
    );
  }

  void _showUserDetails(UserModel user) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(user.name),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow('Email', user.email),
            _buildDetailRow('Role', user.role == UserRole.cr ? 'Class Representative' : 'Student'),
            _buildDetailRow('User ID', user.id),
            if (user.createdAt != null)
              _buildDetailRow('Joined', _formatDate(user.createdAt!)),
            if (user.updatedAt != null)
              _buildDetailRow('Last Updated', _formatDate(user.updatedAt!)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label:',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
