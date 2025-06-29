import 'package:best_buddy_flutter/core/models/notice_model.dart';
import 'package:best_buddy_flutter/core/services/analytics_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeleteNoticeDialog extends StatelessWidget {
  final String id;
  const DeleteNoticeDialog({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete Notice'),
      content:
          const Text('Are you sure you want to delete the selected notice?'),
      actions: [
        TextButton(
          onPressed: () {
            AnalyticsService.logCustomEvent('notice_delete_cancelled', {
              'notice_id': id,
            });
            context.pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              await noticeRef.doc(id).delete();

              AnalyticsService.logCustomEvent('notice_deleted', {
                'notice_id': id,
              });
              if (context.mounted) {
                context.pop();
                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Notice deleted successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            } catch (e) {
              AnalyticsService.logError('notice_delete_failed', e.toString());
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error: $e'),
                    backgroundColor:
                        Theme.of(context).colorScheme.errorContainer,
                  ),
                );
              }
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
            foregroundColor: Theme.of(context).colorScheme.error,
          ),
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
