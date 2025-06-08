import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';

class AboutDialogPage extends StatelessWidget {
  const AboutDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PackageInfo.fromPlatform(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          final packageInfo = asyncSnapshot.data;
          return AlertDialog(
            title: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.school,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Best Buddy'),
                    if (packageInfo != null)
                      Text(
                        'Version ${packageInfo.version}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                      ),
                  ],
                ),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your study companion for managing notices and class tests.',
                ),
                const SizedBox(height: 16),
                const Text(
                  'Features:',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                _buildFeatureItem('📢 Real-time notices'),
                _buildFeatureItem('📝 Class test management'),
                _buildFeatureItem('🔔 Push notifications'),
                _buildFeatureItem('👥 Student collaboration'),
                const SizedBox(height: 16),
                Divider(
                    color: Theme.of(context).colorScheme.outline.withAlpha(50)),
                const SizedBox(height: 16),
                const Text(
                  'Made with ❤️ for students',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                  ),
                ),
                if (packageInfo != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Build ${packageInfo.buildNumber}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 10,
                        ),
                  ),
                ],
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pushReplacementNamed('licenses');
                },
                child: const Text('Show Licenses'),
              ),
              TextButton(
                onPressed: () => context.pop(),
                child: const Text('Close'),
              ),
            ],
          );
        });
  }

  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        feature,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  Future<void> _launchPrivacyPolicy() async {
    final uri = Uri.parse('https://bestbuddy.app/privacy');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _launchTermsOfService() async {
    final uri = Uri.parse('https://bestbuddy.app/terms');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
