import 'package:flutter/material.dart';
import '../../../../core/models/user_model.dart';

class UserFilterChips extends StatelessWidget {
  final UserRole selectedFilter;
  final ValueChanged<UserRole> onFilterChanged;

  const UserFilterChips({
    super.key,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          _buildFilterChip(context, 'All', null),
          const SizedBox(width: 8),
          _buildFilterChip(context, 'Students', UserRole.student),
          const SizedBox(width: 8),
          _buildFilterChip(context, 'CRs', UserRole.cr),
        ],
      ),
    );
  }

  Widget _buildFilterChip(BuildContext context, String label, UserRole? role) {
    final isSelected = selectedFilter == role || (role == null && selectedFilter == UserRole.student);
    
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        if (selected) {
          onFilterChanged(role ?? UserRole.student);
        }
      },
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      checkmarkColor: Theme.of(context).colorScheme.onPrimaryContainer,
    );
  }
}
