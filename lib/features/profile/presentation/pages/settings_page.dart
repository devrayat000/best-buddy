import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/settings/settings_cubit.dart';
import '../../../../core/theme/theme_cubit.dart';
import '../widgets/settings_section.dart';
import '../widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Account Section
          SettingsSection(
            title: 'Account',
            children: [
              SettingsTile(
                leading: Icon(
                  Icons.person_outline,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Personal Information',
                subtitle: 'Manage your personal details',
                onTap: () => context.push('/profile/personal'),
              ),
              SettingsTile(
                leading: Icon(
                  Icons.security_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Privacy & Security',
                subtitle: 'Account security settings',
                onTap: () {
                  // TODO: Implement privacy settings
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Coming soon!')),
                  );
                },
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Notifications Section
          SettingsSection(
            title: 'Notifications',
            children: [
              SettingsTile(
                leading: Icon(
                  Icons.notifications_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Push Notifications',
                subtitle: 'Manage notification preferences',
                trailing: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, settingsState) {
                    return Switch(
                      value: settingsState.pushNotificationsEnabled,
                      onChanged: (value) {
                        context
                            .read<SettingsCubit>()
                            .togglePushNotifications(value);
                      },
                    );
                  },
                ),
              ),
              SettingsTile(
                leading: Icon(
                  Icons.schedule_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Class Test Reminders',
                subtitle: 'Get reminded about upcoming tests',
                trailing: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, settingsState) {
                    return Switch(
                      value: settingsState.classTestRemindersEnabled,
                      onChanged: (value) {
                        context
                            .read<SettingsCubit>()
                            .toggleClassTestReminders(value);
                      },
                    );
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // App Section
          SettingsSection(
            title: 'App',
            children: [
              SettingsTile(
                leading: Icon(
                  Icons.palette_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Theme',
                subtitle: 'Light, Dark, or System',
                trailing: BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, themeState) {
                    final themeCubit = context.read<ThemeCubit>();
                    return Text(themeCubit.currentThemeText);
                  },
                ),
                onTap: () => context.push('/profile/theme'),
              ),
              SettingsTile(
                leading: Icon(
                  Icons.language_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Language',
                subtitle: 'App language',
                trailing: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, settingsState) {
                    return Text(settingsState.language);
                  },
                ),
                onTap: () => context.push('/profile/language'),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Support Section
          SettingsSection(
            title: 'Support',
            children: [
              SettingsTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Help & Support',
                subtitle: 'Get help and contact support',
                onTap: () => context.push('/profile/help'),
              ),
              SettingsTile(
                leading: Icon(
                  Icons.feedback_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Send Feedback',
                subtitle: 'Help us improve the app',
                onTap: () => _sendFeedback(),
              ),
              SettingsTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'About',
                subtitle: 'App version and information',
                onTap: () => context.pushNamed('about-dialog'),
              ),
              SettingsTile(
                leading: Icon(
                  Icons.article_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: 'Licenses',
                subtitle: 'Open source licenses',
                onTap: () => context.goNamed('licenses'),
              ),
            ],
          ),

          const SizedBox(height: 32),

          // Logout Section
          Card(
            color: Theme.of(context).colorScheme.errorContainer.withAlpha(50),
            child: SettingsTile(
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).colorScheme.error,
              ),
              title: 'Logout',
              subtitle: 'Sign out of your account',
              titleStyle: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontWeight: FontWeight.w500,
              ),
              onTap: () => context.push('/profile/logout'),
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  void _sendFeedback() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'support@bestbuddy.app',
      query: 'subject=Best Buddy App Feedback',
    );

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
