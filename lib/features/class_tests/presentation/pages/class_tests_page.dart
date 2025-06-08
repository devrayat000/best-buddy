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

class ClassTestsPage extends StatelessWidget {
  const ClassTestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClassTestsView();
  }
}

class ClassTestsView extends StatefulWidget {
  const ClassTestsView({super.key});

  @override
  State<ClassTestsView> createState() => _ClassTestsViewState();
}

class _ClassTestsViewState extends State<ClassTestsView> {
  static const _pageSize = 20;

  final PagingController<int, Query$ClassTests$classTests> _pagingController =
      PagingController(firstPageKey: 0);

  late GraphQLClient _client;

  @override
  void initState() {
    super.initState();
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
      final result = await _client.query(
        Options$Query$ClassTests(
          variables: Variables$Query$ClassTests(
            offset: pageKey,
            limit: _pageSize,
            orderBy: [
              Input$ClassTestOrderByInput(createdAt: Enum$OrderDirection.desc)
            ],
          ),
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
        child: PagedListView<int, Query$ClassTests$classTests>(
          pagingController: _pagingController,
          padding: const EdgeInsets.all(8.0),
          builderDelegate:
              PagedChildBuilderDelegate<Query$ClassTests$classTests>(
            firstPageProgressIndicatorBuilder: (context) => LoadingView.page(),
            newPageProgressIndicatorBuilder: (context) => LoadingView.inline(),
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
              return ListTile(
                onTap: () {
                  context.goNamed(
                    'class-test-detail',
                    pathParameters: {'id': classTest.id},
                  );
                },
                // contentPadding: const EdgeInsets.all(16),
                title: Text(
                  classTest.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (classTest.content.isNotEmpty)
                      Text(
                        classTest.content,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          DateFormat.yMMMd()
                              .add_jm()
                              .format(classTest.datetime),
                          style: TextStyle(
                            fontSize: 12,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const Spacer(),
                        if (classTest.createdBy?.name != null) ...[
                          Icon(Icons.person,
                              size: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant),
                          const SizedBox(width: 4),
                          Text(
                            classTest.createdBy!.name,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
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
