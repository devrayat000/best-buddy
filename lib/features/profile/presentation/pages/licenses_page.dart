import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../../../core/widgets/loading_view.dart';

class LicensesPage extends StatelessWidget {
  const LicensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PackageInfo.fromPlatform(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState != ConnectionState.done) {
            return LoadingView.page();
          }

          final packageInfo = asyncSnapshot.data;
          return LicensePage(
            applicationName: packageInfo?.appName ?? 'Best Buddy',
            applicationVersion: packageInfo?.version ?? '1.0.0',
            applicationIcon: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.school,
                color: Colors.white,
                size: 36,
              ),
            ),
            applicationLegalese:
                '© 2024 Best Buddy. All rights reserved.\n\nMade with ❤️ for students.',
          );
        });
  }
}
