import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../data/graphql/notices_queries.graphql.dart';
import '../../../../core/widgets/rich_text_utils.dart';
import '../../../../core/widgets/error_view.dart';

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
        child: Query$Notice$Widget(
          options: Options$Query$Notice(
            variables: Variables$Query$Notice(id: noticeId),
          ),
          builder: (result, {fetchMore, refetch}) {
            if (result.hasException) {
              return Column(
                children: [
                  _buildHeader(context, 'Error'),
                  Expanded(
                    child: ErrorView(
                      message: result.exception.toString(),
                      title: 'Failed to load notice',
                      onRetry: () => refetch?.call(),
                    ),
                  ),
                ],
              );
            }

            if (result.isLoading) {
              return _buildLoading(context);
            }
            final notice = result.parsedData?.notice;
            log('LOG: ${result.toString()}');
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
        const Expanded(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, Query$Notice$notice notice) {
    return Column(
      children: [
        _buildHeader(context, notice.title ?? 'Notice'),
        const Divider(height: 1),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notice content
                if (notice.content?.document != null) ...[
                  StyledRichText(document: notice.content!.document),
                  const SizedBox(height: 24),
                ],

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

  Widget _buildMetadata(BuildContext context, Query$Notice$notice notice) {
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
          if (notice.createdBy?.name != null) ...[
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  size: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  notice.createdBy!.name,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ],
          if (createdAt != null) ...[
            if (notice.createdBy?.name != null) const SizedBox(height: 8),
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
