import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../data/graphql/class_tests_queries.graphql.dart';
import '../../../../core/widgets/rich_text_utils.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class ClassTestDetailsModal extends StatelessWidget {
  final String classTestId;

  const ClassTestDetailsModal({
    super.key,
    required this.classTestId,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Query$ClassTest$Widget(
          options: Options$Query$ClassTest(
            variables: Variables$Query$ClassTest(id: classTestId),
          ),
          builder: (result, {fetchMore, refetch}) {
            if (result.hasException) {
              return Column(
                children: [
                  _buildHeader(context, 'Error'),
                  Expanded(
                    child: ErrorView(
                      message: result.exception.toString(),
                      title: 'Failed to load class test',
                      onRetry: () => refetch?.call(),
                    ),
                  ),
                ],
              );
            }

            if (result.isLoading) {
              return _buildLoading(context);
            }
            final classTest = result.parsedData?.classTest;
            if (classTest == null) {
              return Column(
                children: [
                  _buildHeader(context, 'Error'),
                  Expanded(
                    child: ErrorView.notFound(
                      resourceName: 'Class test',
                    ),
                  ),
                ],
              );
            }

            return _buildContent(context, classTest);
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

  Widget _buildContent(
      BuildContext context, Query$ClassTest$classTest classTest) {
    return Column(
      children: [
        _buildHeader(context, classTest.title),
        const Divider(height: 1),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Class test content
                StyledRichText(document: classTest.content.document),
                const SizedBox(height: 24),

                // Metadata
                _buildMetadata(context, classTest),
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

  Widget _buildMetadata(
      BuildContext context, Query$ClassTest$classTest classTest) {
    final createdAt = classTest.createdAt != null
        ? DateFormat('MMM dd, yyyy • hh:mm a').format(classTest.createdAt!)
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
          if (classTest.createdBy?.name != null) ...[
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  size: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  classTest.createdBy!.name,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ],
          if (createdAt != null) ...[
            if (classTest.createdBy?.name != null) const SizedBox(height: 8),
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
