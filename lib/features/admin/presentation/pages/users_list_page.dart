import 'package:flutter/material.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/services/user_service.dart';
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