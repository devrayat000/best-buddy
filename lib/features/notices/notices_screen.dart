import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import '../../core/auth/auth_service.dart';
import '../../core/models/notice_model.dart';
import '../../core/services/analytics_service.dart';

class NoticesScreen extends StatefulWidget {
  const NoticesScreen({super.key});

  @override
  State<NoticesScreen> createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  @override
  void initState() {
    super.initState();
    // Log screen visit
    AnalyticsService.logScreenView('notices_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notices')),
      body: FirestoreBuilder<NoticeModelQuerySnapshot>(
        ref: noticeRef.orderByCreatedAt(descending: true),
        builder: (context, snapshot, child) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Error: ${snapshot.error}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      AnalyticsService.logCustomEvent(
                          'notices_retry_tapped', {});
                      setState(() {}); // Trigger rebuild to retry stream
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          final querySnapshot = snapshot.requireData;

          if (querySnapshot.docs.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.announcement_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No notices available',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              final notice = querySnapshot.docs[index].data;
              return _buildNoticeCard(notice);
            },
          );
        },
      ),
      floatingActionButton: FutureBuilder<bool>(
        future: AuthService().isCurrentUserCR(),
        builder: (context, snapshot) {
          if (snapshot.data == true) {
            return FloatingActionButton(
              onPressed: () {
                AnalyticsService.logCustomEvent('add_notice_button_tapped', {});
                context.go('/notices/add');
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add, color: Colors.white),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildNoticeCard(NoticeModel notice) {
    return ListTile(
      title: Text(
        notice.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (notice.content.isNotEmpty)
            Text(
              notice.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FirestoreBuilder(
                ref: notice.createdBy,
                builder: (context, snapshot, child) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return const Text('Error loading user');
                  }
                  final user = snapshot.requireData.data;

                  return Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        user!.name,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  );
                },
              ),
              if (notice.createdAt != null)
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      DateFormat.yMMMd().format(notice.createdAt!),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
      onTap: () {
        context.goNamed(
          'notice-detail',
          pathParameters: {'id': notice.id!},
        );
      },
      isThreeLine: true,
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  void _showDeleteNoticeDialog(BuildContext context, NoticeModel notice) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Notice'),
        content: Text('Are you sure you want to delete "${notice.title}"?'),
        actions: [
          TextButton(
            onPressed: () {
              AnalyticsService.logCustomEvent('notice_delete_cancelled', {
                'notice_id': notice.id ?? 'unknown',
                'notice_title': notice.title,
              });
              Navigator.pop(dialogContext);
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                await noticeRef.doc(notice.id!).delete();

                AnalyticsService.logCustomEvent('notice_deleted', {
                  'notice_id': notice.id ?? 'unknown',
                  'notice_title': notice.title,
                });

                Navigator.pop(dialogContext);

                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Notice deleted successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              } catch (e) {
                AnalyticsService.logError('notice_delete_failed', e.toString());
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error: $e'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
