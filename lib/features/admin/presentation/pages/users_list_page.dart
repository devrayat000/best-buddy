import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/auth/auth_service.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';
import '../widgets/user_filter_chips.dart';
import '../widgets/user_stats_card.dart';
import '../widgets/users_list.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  UserRole _selectedFilter = UserRole.student;
  Map<String, int>? _stats;

  @override
  void initState() {
    super.initState();
    _loadStats();
  }

  Future<void> _loadStats() async {
    try {
      final usersSnapshot = await usersRef.get();
      final users = usersSnapshot.docs.map((doc) => doc.data()).toList();
      
      final stats = <String, int>{};
      for (final user in users) {
        final roleKey = user.role.name;
        stats[roleKey] = (stats[roleKey] ?? 0) + 1;
      }
      
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
      future: AuthService().isCurrentUserCR(),
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
          child: UserFilterChips(
            selectedFilter: _selectedFilter,
            onFilterChanged: (filter) {
              setState(() {
                _selectedFilter = filter;
              });
            },
          ),
        ),
      ),
      body: Column(
        children: [
          if (_stats != null) UserStatsCard(stats: _stats!),
          Expanded(
            child: UsersList(selectedFilter: _selectedFilter),
          ),
        ],
      ),
    );
}
}