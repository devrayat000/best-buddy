import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Quick Help Section
          _buildHelpSection(
            context,
            title: 'Quick Help',
            icon: Icons.flash_on,
            children: [
              _buildHelpTile(
                context,
                question: 'How do I view notices?',
                answer:
                    'Go to the Notices tab to see all announcements from your instructors.',
              ),
              _buildHelpTile(
                context,
                question: 'How do I check class tests?',
                answer:
                    'Visit the Class Tests tab to view upcoming tests and their details.',
              ),
              _buildHelpTile(
                context,
                question: 'How do I enable notifications?',
                answer:
                    'Go to Settings > Notifications to manage your notification preferences.',
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Account Help Section
          _buildHelpSection(
            context,
            title: 'Account & Profile',
            icon: Icons.account_circle,
            children: [
              _buildHelpTile(
                context,
                question: 'How do I update my profile?',
                answer:
                    'Go to Profile > Personal Information to view and manage your details.',
              ),
              _buildHelpTile(
                context,
                question: 'Can I change my email?',
                answer:
                    'Your email is linked to your student account. Contact your administrator for changes.',
              ),
              _buildHelpTile(
                context,
                question: 'How do I logout?',
                answer:
                    'Tap the logout button on your Profile page or in Settings.',
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Technical Support Section
          _buildHelpSection(
            context,
            title: 'Technical Support',
            icon: Icons.support_agent,
            children: [
              _buildHelpTile(
                context,
                question: 'The app is not loading properly',
                answer:
                    'Try closing and reopening the app. If the issue persists, contact support.',
              ),
              _buildHelpTile(
                context,
                question: 'I\'m not receiving notifications',
                answer:
                    'Check your device notification settings and ensure the app has permission.',
              ),
              _buildHelpTile(
                context,
                question: 'How do I report a bug?',
                answer:
                    'Use the "Contact Support" button below to report technical issues.',
              ),
            ],
          ),

          const SizedBox(height: 32),

          // Contact Support Card
          Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Icon(
                    Icons.support_agent,
                    size: 48,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Still need help?',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Contact our support team for personalized assistance',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  FilledButton.icon(
                    onPressed: () => _contactSupport(),
                    icon: const Icon(Icons.email),
                    label: const Text('Contact Support'),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Additional Resources
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.article_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('User Guide'),
                  subtitle: const Text('Detailed app documentation'),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => _openUserGuide(),
                ),
                Divider(
                  height: 1,
                  indent: 56,
                  color: Theme.of(context).colorScheme.outline.withAlpha(50),
                ),
                ListTile(
                  leading: Icon(
                    Icons.video_library_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('Video Tutorials'),
                  subtitle: const Text('Learn how to use the app'),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => _openVideoTutorials(),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildHelpSection(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 24,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Card(
          child: Column(
            children: children.asMap().entries.map((entry) {
              final index = entry.key;
              final child = entry.value;

              return Column(
                children: [
                  child,
                  if (index < children.length - 1)
                    Divider(
                      height: 1,
                      indent: 16,
                      endIndent: 16,
                      color:
                          Theme.of(context).colorScheme.outline.withAlpha(50),
                    ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildHelpTile(
    BuildContext context, {
    required String question,
    required String answer,
  }) {
    return ExpansionTile(
      title: Text(
        question,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
      childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            answer,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ),
      ],
    );
  }

  Future<void> _contactSupport() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'support@bestbuddy.app',
      query: 'subject=Best Buddy App Support Request',
    );

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _openUserGuide() async {
    final uri = Uri.parse('https://bestbuddy.app/guide');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _openVideoTutorials() async {
    final uri = Uri.parse('https://bestbuddy.app/tutorials');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
