import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/auth/auth_service.dart';
import '../../core/models/notice_model.dart';
import '../../core/services/analytics_service.dart';
import 'data/notices_firebase_service.dart';

class NoticesScreen extends StatefulWidget {
  const NoticesScreen({super.key});

  @override
  State<NoticesScreen> createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  final NoticesFirebaseService _noticesService = NoticesFirebaseService();

  @override
  void initState() {
    super.initState();
    // Log screen visit
    AnalyticsService.logScreenView('notices_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notices'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: StreamBuilder<List<NoticeModel>>(
        stream: _noticesService.getNotices(),
        builder: (context, snapshot) {
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
                      AnalyticsService.logCustomEvent('notices_retry_tapped', {});
                      setState(() {}); // Trigger rebuild to retry stream
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          final notices = snapshot.data ?? [];
          
          if (notices.isEmpty) {
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
            itemCount: notices.length,
            itemBuilder: (context, index) {
              final notice = notices[index];
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
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    notice.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FutureBuilder<bool>(
                  future: AuthService().isCurrentUserCR(),
                  builder: (context, snapshot) {
                    if (snapshot.data == true) {
                      return PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == 'edit') {
                            AnalyticsService.logCustomEvent('notice_edit_tapped', {
                              'notice_id': notice.id ?? 'unknown',
                              'notice_title': notice.title,
                            });
                            context.go('/notices/edit/${notice.id}', extra: notice);
                          } else if (value == 'delete') {
                            AnalyticsService.logCustomEvent('notice_delete_tapped', {
                              'notice_id': notice.id ?? 'unknown',
                              'notice_title': notice.title,
                            });
                            _showDeleteNoticeDialog(context, notice);
                          }
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'edit',
                            child: Row(
                              children: [
                                Icon(Icons.edit, size: 20),
                                SizedBox(width: 8),
                                Text('Edit'),
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children: [
                                Icon(Icons.delete, 
                                     color: Colors.red, size: 20),
                                SizedBox(width: 8),
                                Text('Delete'),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notice.content,
                  style: const TextStyle(fontSize: 16),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      AnalyticsService.logCustomEvent('notice_read_more_tapped', {
                        'notice_id': notice.id ?? 'unknown',
                        'notice_title': notice.title,
                      });
                      context.go('/notices/${notice.id}');
                    },
                    child: const Text('Read more'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 16,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 4),
                Text(
                  'By ${notice.createdByName ?? 'Unknown'}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const Spacer(),
                if (notice.createdAt != null) ...[
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    _formatDate(notice.createdAt!),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
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
                await _noticesService.deleteNotice(notice.id!);
                
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
