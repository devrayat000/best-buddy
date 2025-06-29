import 'package:best_buddy_flutter/features/notices/presentation/widgets/notice_tile.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    FirebaseFirestore.instance
        .collection('notices')
        .get()
        .then((snapshot) {})
        .catchError((error) {
      AnalyticsService.logError('notices_fetch_error', error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notices')),
      body: FirestoreBuilder(
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
            padding: const EdgeInsets.all(8),
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              final notice = querySnapshot.docs[index].data;
              return NoticeTile(notice: notice);
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
              child: const Icon(Icons.add, color: Colors.white),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
