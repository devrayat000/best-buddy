import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../data/graphql/class_tests_queries.graphql.dart';
import '../../../../core/graphql/schema.graphql.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';
import '../widgets/widgets.dart';

class ClassTestsPage extends StatefulWidget {
  const ClassTestsPage({super.key});

  @override
  State<ClassTestsPage> createState() => _ClassTestsPageState();
}

class _ClassTestsPageState extends State<ClassTestsPage> {
  static const _pageSize = 20;

  late final PagingController<int, Query$ClassTests$classTests>
      _pagingController;
  late GraphQLClient _client;

  @override
  void initState() {
    super.initState();
    _pagingController = PagingController(firstPageKey: 0);
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _client = GraphQLProvider.of(context).value;
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final result = await _client.query$ClassTests(
        Options$Query$ClassTests(
          variables: Variables$Query$ClassTests(
            offset: pageKey,
            limit: _pageSize,
            orderBy: [
              Input$ClassTestOrderByInput(createdAt: Enum$OrderDirection.desc)
            ],
          ),
          fetchPolicy: FetchPolicy
              .cacheAndNetwork, // Use cache-first for offline support
        ),
      );

      if (result.hasException) {
        log('❌ Pagination Query Exception: ${result.exception}');
        _pagingController.error = result.exception;
        return;
      }
      final classTests = result.parsedData?.classTests ?? [];
      final totalCount = result.parsedData?.classTestsCount ?? 0;

      log('📝 Fetched page $pageKey: ${classTests.length} items (total: $totalCount)');

      final isLastPage = pageKey + classTests.length >= totalCount;
      if (isLastPage) {
        _pagingController.appendLastPage(classTests);
      } else {
        final nextPageKey = pageKey + classTests.length;
        _pagingController.appendPage(classTests, nextPageKey);
      }
    } catch (error) {
      log('❌ Pagination Error: $error');
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Tests'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _pagingController.refresh();
        },
        child: CustomScrollView(
          slivers: [
            // Calendar header
            const SliverToBoxAdapter(
              child: ClassTestsCalendar(),
            ),
            // Class tests list
            PagedSliverList<int, Query$ClassTests$classTests>(
              pagingController: _pagingController,
              builderDelegate:
                  PagedChildBuilderDelegate<Query$ClassTests$classTests>(
                firstPageProgressIndicatorBuilder: (context) =>
                    LoadingView.page(),
                newPageProgressIndicatorBuilder: (context) =>
                    LoadingView.inline(),
                noItemsFoundIndicatorBuilder: (context) =>
                    _buildEmptyWidget(context),
                firstPageErrorIndicatorBuilder: (context) => ErrorView(
                  message: _pagingController.error.toString(),
                  title: 'Error loading class tests',
                  onRetry: () => _pagingController.refresh(),
                ),
                newPageErrorIndicatorBuilder: (context) => ErrorView.inline(
                  message: 'Error loading more class tests',
                  onRetry: () => _pagingController.retryLastFailedRequest(),
                ),
                itemBuilder: (context, classTest, index) {
                  return _buildClassTestItem(context, classTest);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassTestItem(
      BuildContext context, Query$ClassTests$classTests classTest) {
    final dimmedColor =
        Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(120);

    return ListTile(
      onTap: () {
        context.goNamed(
          'class-test-detail',
          pathParameters: {'id': classTest.id},
        );
      },
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('MMM').format(classTest.datetime),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              DateFormat('dd').format(classTest.datetime),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
      title: Text(
        classTest.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (classTest.content.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              classTest.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.access_time,
                size: 16,
                color: dimmedColor,
              ),
              const SizedBox(width: 4),
              Text(
                DateFormat.jm().format(classTest.datetime),
                style: TextStyle(
                  fontSize: 12,
                  color: dimmedColor,
                ),
              ),
              const Spacer(),
              if (classTest.createdBy?.name != null) ...[
                Icon(
                  Icons.person,
                  size: 16,
                  color: dimmedColor,
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    classTest.createdBy!.name,
                    style: TextStyle(
                      fontSize: 12,
                      color: dimmedColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.quiz_outlined,
            size: 64,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            'No class tests available',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          const Text(
            'Check back later for new class tests.',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
