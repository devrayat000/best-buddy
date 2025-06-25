import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/auth/auth_service.dart';

class ProfileAccountSection extends StatelessWidget {
  const ProfileAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: _ProfileMenuCard(
        title: 'Account',
        items: [
          ProfileMenuItem(
            icon: Icons.person_outlined,
            title: 'Personal Information',
            subtitle: 'Manage your personal details',
            onTap: () => context.push('/profile/personal'),
          ),
          ProfileMenuItem(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            subtitle: 'Manage notification preferences',
            onTap: () => context.push('/profile/settings'),
          ),
        ],
      ),
    );
  }
}

class ProfileAppSection extends StatelessWidget {
  const ProfileAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: _ProfileMenuCard(
        title: 'App',
        items: [
          ProfileMenuItem(
            icon: Icons.settings_outlined,
            title: 'Settings',
            subtitle: 'App preferences and configuration',
            onTap: () => context.push('/profile/settings'),
          ),
          ProfileMenuItem(
            icon: Icons.help_outlined,
            title: 'Help & Support',
            subtitle: 'Get help and contact support',
            onTap: () => context.push('/profile/help-dialog'),
          ),
          ProfileMenuItem(
            icon: Icons.info_outlined,
            title: 'About',
            subtitle: 'App version and information',
            onTap: () => context.push('/profile/about'),
          ),
        ],
      ),
    );
  }
}

class ProfileCRSection extends StatelessWidget {
  const ProfileCRSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: _ProfileMenuCard(
        title: 'CR Management',
        items: [
          ProfileMenuItem(
            icon: Icons.people_outlined,
            title: 'View All Users',
            subtitle: 'See all registered students and CRs',
            onTap: () => context.push('/profile/users'),
          ),
        ],
      ),
    );
  }
}

class _ProfileMenuCard extends StatelessWidget {
  final String title;
  final List<ProfileMenuItem> items;

  const _ProfileMenuCard({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          ...items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;

            return Column(
              children: [
                ListTile(
                  leading: Icon(
                    item.icon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(item.title),
                  subtitle: item.subtitle != null ? Text(item.subtitle!) : null,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: item.onTap,
                ),
                if (index < items.length - 1)
                  Divider(
                    height: 1,
                    indent: 56,
                    color: Theme.of(context).colorScheme.outline.withAlpha(50),
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class ProfileMenuItem {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const ProfileMenuItem({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });
}
