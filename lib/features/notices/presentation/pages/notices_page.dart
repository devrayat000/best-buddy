import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../data/graphql/notices_queries.graphql.dart';
import '../../../../core/graphql/schema.graphql.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_view.dart';

class NoticesPage extends StatefulWidget {
  const NoticesPage({super.key});

  @override
  State<NoticesPage> createState() => _NoticesPageState();
}

class _NoticesPageState extends State<NoticesPage> {
  static const _pageSize = 20;

  final PagingController<int, Query$Notices$notices> _pagingController =
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
        Options$Query$Notices(
          variables: Variables$Query$Notices(
            offset: pageKey,
            limit: _pageSize,
            orderBy: [
              Input$NoticeOrderByInput(createdAt: Enum$OrderDirection.desc)
            ],
          ),
        ),
      );

      if (result.hasException) {
        log('❌ Pagination Query Exception: ${result.exception}');
        _pagingController.error = result.exception;
        return;
      }

      final notices = result.parsedData?.notices ?? [];
      final totalCount = result.parsedData?.noticesCount ?? 0;

      log('📝 Fetched page $pageKey: ${notices.length} items (total: $totalCount)');

      final isLastPage = pageKey + notices.length >= totalCount;
      if (isLastPage) {
        _pagingController.appendLastPage(notices);
      } else {
        final nextPageKey = pageKey + notices.length;
        _pagingController.appendPage(notices, nextPageKey);
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
        title: const Text('Notices'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _pagingController.refresh();
        },
        child: PagedListView<int, Query$Notices$notices>(
          pagingController: _pagingController,
          padding: const EdgeInsets.all(8.0),
          builderDelegate: PagedChildBuilderDelegate<Query$Notices$notices>(
            firstPageProgressIndicatorBuilder: (context) => LoadingView.page(),
            newPageProgressIndicatorBuilder: (context) => LoadingView.inline(),
            noItemsFoundIndicatorBuilder: (context) =>
                _buildEmptyWidget(context),
            firstPageErrorIndicatorBuilder: (context) => ErrorView(
              message: _pagingController.error.toString(),
              title: 'Error loading notices',
              onRetry: () => _pagingController.refresh(),
            ),
            newPageErrorIndicatorBuilder: (context) => ErrorView.inline(
              message: 'Error loading more notices',
              onRetry: () => _pagingController.retryLastFailedRequest(),
            ),
            itemBuilder: (context, notice, index) {
              return ListTile(
                title: Text(
                  notice.title ?? 'Untitled',
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
                        if (notice.createdBy?.name != null)
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              const SizedBox(width: 4),
                              Text(
                                notice.createdBy!.name,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
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
                    pathParameters: {'id': notice.id},
                  );
                },
                isThreeLine: true,
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
            Icons.inbox_outlined,
            size: 64,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            'No notices found',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          const Text(
            'Check back later for new notices.',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
