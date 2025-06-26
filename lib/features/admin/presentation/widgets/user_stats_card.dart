import 'package:flutter/material.dart';

class UserStatsCard extends StatelessWidget {
  final Map<String, int> stats;

  const UserStatsCard({
    super.key,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                context,
                'Total Users',
                stats['total'].toString(),
                Icons.people,
                Theme.of(context).colorScheme.primary,
              ),
              _buildStatItem(
                context,
                'Students',
                stats['students'].toString(),
                Icons.school,
                Colors.blue,
              ),
              _buildStatItem(
                context,
                'CRs',
                stats['crs'].toString(),
                Icons.admin_panel_settings,
                Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
      ],
    );
  }
}
