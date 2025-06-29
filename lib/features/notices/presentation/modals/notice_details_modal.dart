import 'package:best_buddy_flutter/core/models/notice_model.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/widgets/rich_text_utils.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class NoticeDetailsModal extends StatelessWidget {
  final String noticeId;

  const NoticeDetailsModal({
    super.key,
    required this.noticeId,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Container(
        width: double.maxFinite,
        // height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: FirestoreBuilder(
          ref: noticeRef.doc(noticeId),
          builder: (context, snapshot, child) {
            if (snapshot.hasError) {
              return Column(
                children: [
                  _buildHeader(context, 'Error'),
                  Expanded(
                    child: ErrorView(
                      message: snapshot.error.toString(),
                      title: 'Failed to load notice',
                      onRetry: () {
                        context.pushReplacement('/notices/$noticeId');
                      },
                    ),
                  ),
                ],
              );
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return _buildLoading(context);
            }
            final notice = snapshot.requireData.data;
            if (notice == null) {
              return Column(
                children: [
                  _buildHeader(context, 'Error'),
                  Expanded(
                    child: ErrorView.notFound(
                      resourceName: 'Notice',
                    ),
                  ),
                ],
              );
            }

            return _buildContent(context, notice);
          },
        ),
      ),
    );
  }

  Widget _buildLoading(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context, 'Loading...'),
        Expanded(
          child: LoadingView.modal(),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, NoticeModel notice) {
    return Column(
      children: [
        _buildHeader(context, notice.title),
        const Divider(height: 1),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notice content
                StyledRichText(document: notice.content),
                const SizedBox(height: 24),

                // Metadata
                _buildMetadata(context, notice),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
            style: IconButton.styleFrom(
              backgroundColor:
                  Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetadata(BuildContext context, NoticeModel notice) {
    final createdAt = notice.createdAt != null
        ? DateFormat('MMM dd, yyyy • hh:mm a').format(notice.createdAt!)
        : null;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .surfaceContainerHighest
            .withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      Icons.person_outline,
                      size: 18,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      user!.name,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ],
                );
              }),
          const SizedBox(height: 8),
          if (createdAt != null) ...[
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 18,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Text(
                  createdAt,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
