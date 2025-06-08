import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpDialogPage extends StatelessWidget {
  const HelpDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Help & Support'),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Need help? Here are some ways to get support:'),
          SizedBox(height: 16),
          Text('• Check the FAQ section'),
          Text('• Contact your class administrator'),
          Text('• Email support team'),
          SizedBox(height: 16),
          Text(
            'For technical issues, please provide your student ID and a description of the problem.',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: const Text('Close'),
        ),
        FilledButton(
          onPressed: () {
            context.pop();
            // Navigate to help page for more detailed support
            context.push('/profile/help');
          },
          child: const Text('Contact Support'),
        ),
      ],
    );
  }
}
