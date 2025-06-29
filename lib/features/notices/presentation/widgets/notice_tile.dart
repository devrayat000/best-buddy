import 'package:best_buddy_flutter/core/auth/auth_service.dart';
import 'package:best_buddy_flutter/core/models/notice_model.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class NoticeTile extends StatelessWidget {
  final NoticeModel notice;
  const NoticeTile({super.key, required this.notice});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService().isCurrentUserCR(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error loading user');
        }

        var tile = _buildTile(context);

        if (snapshot.connectionState == ConnectionState.waiting) {
          return tile;
        }

        final isCr = snapshot.requireData;

        if (isCr) {
          tile = Dismissible(
            key: ValueKey(notice.id),
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                // User swiped to delete
                context.goNamed(
                  'delete-notice',
                  pathParameters: {'id': notice.id},
                );
              } else {
                // User swiped to edit
                context.goNamed(
                  'edit-notice',
                  pathParameters: {'id': notice.id},
                );
              }
            },
            background: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: const Icon(
                      Icons.edit_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.errorContainer,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            child: tile,
          );
        }
        return tile;
      },
    );
  }

  Widget _buildTile(BuildContext context) {
    final dimmedColor =
        Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(120);
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
                        color: dimmedColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        user!.name,
                        style: TextStyle(
                          fontSize: 12,
                          color: dimmedColor,
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
                      color: dimmedColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      DateFormat.yMMMd().format(notice.createdAt!),
                      style: TextStyle(
                        fontSize: 12,
                        color: dimmedColor,
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
          pathParameters: {'id': notice.id},
        );
      },
      isThreeLine: true,
    );
  }
}
