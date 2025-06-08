import 'package:flutter/material.dart';

class ProfileStatsCard extends StatelessWidget {
  final String role;
  final DateTime? memberSince;

  const ProfileStatsCard({
    super.key,
    required this.role,
    this.memberSince,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: _buildStatItem(
                  context,
                  icon: Icons.school_outlined,
                  label: 'Role',
                  value: role,
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outline.withAlpha(50),
                ),
                child: const SizedBox(
                  width: 1,
                  height: 40,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  context,
                  icon: Icons.calendar_today_outlined,
                  label: 'Member Since',
                  value: memberSince != null ? '${memberSince!.year}' : 'N/A',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
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
