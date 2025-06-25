import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../../core/auth/auth_service.dart';
import '../../core/models/class_test_model.dart';
import '../../core/services/analytics_service.dart';
import 'data/class_tests_firebase_service.dart';
import 'presentation/widgets/class_tests_calendar.dart';

class ClassTestsScreen extends StatefulWidget {
  const ClassTestsScreen({super.key});

  @override
  State<ClassTestsScreen> createState() => _ClassTestsScreenState();
}

class _ClassTestsScreenState extends State<ClassTestsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _currentView = 'list';
  String _currentFilter = 'upcoming';
  final ClassTestsFirebaseService _classTestsService = GetIt.I<ClassTestsFirebaseService>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _currentView = _tabController.index == 0 ? 'list' : 'calendar';
        });
        AnalyticsService.logCustomEvent('class_tests_view_changed', {
          'view': _currentView,
        });
      }
    });
    
    // Log screen visit
    AnalyticsService.logScreenView('class_tests_screen');
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Stream<List<ClassTestModel>> _getClassTestsStream() {
    return _currentFilter == 'upcoming'
        ? _classTestsService.getUpcomingClassTests()
        : _classTestsService.getClassTests();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Tests'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: const [
            Tab(
              icon: Icon(Icons.list),
              text: 'List',
            ),
            Tab(
              icon: Icon(Icons.calendar_month),
              text: 'Calendar',
            ),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _currentFilter = value;
              });
              AnalyticsService.logCustomEvent('class_tests_filter', {
                'filter_type': value,
                'view': _currentView,
              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'upcoming',
                child: Text('Upcoming Tests'),
              ),
              const PopupMenuItem(
                value: 'all',
                child: Text('All Tests'),
              ),
            ],
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildListView(),
          _buildCalendarView(),
        ],
      ),
      floatingActionButton: FutureBuilder<bool>(
        future: AuthService().isCurrentUserCR(),
        builder: (context, snapshot) {
          if (snapshot.data == true) {
            return FloatingActionButton(
              onPressed: () {
                AnalyticsService.logCustomEvent('add_class_test_button_tapped', {});
                context.go('/class-tests/add');
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

  Widget _buildListView() {
    return StreamBuilder<List<ClassTestModel>>(
      stream: _getClassTestsStream(),
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
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    AnalyticsService.logCustomEvent('class_tests_retry', {
                      'view': 'list',
                      'error_message': snapshot.error.toString(),
                    });
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        final classTests = snapshot.data ?? [];
        if (classTests.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.quiz_outlined,
                  size: 64,
                  color: Colors.grey,
                ),
                SizedBox(height: 16),
                Text(
                  'No class tests available',
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
          itemCount: classTests.length,
          itemBuilder: (context, index) {
            final classTest = classTests[index];
            return _buildClassTestCard(classTest);
          },
        );
      },
    );
  }

  Widget _buildCalendarView() {
    return StreamBuilder<List<ClassTestModel>>(
      stream: _getClassTestsStream(),
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
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    AnalyticsService.logCustomEvent('class_tests_retry', {
                      'view': 'calendar',
                      'error_message': snapshot.error.toString(),
                    });
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        final classTests = snapshot.data ?? [];
        return ClassTestsCalendar(classTests: classTests);
      },
    );
  }

  Widget _buildClassTestCard(ClassTestModel classTest) {
    final isUpcoming = classTest.testDate.isAfter(DateTime.now());
    
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      color: isUpcoming ? null : Colors.grey[100],
      child: InkWell(
        onTap: () {
          AnalyticsService.logCustomEvent('class_test_card_tapped', {
            'class_test_id': classTest.id ?? 'unknown',
            'subject': classTest.subject,
            'is_upcoming': isUpcoming,
          });
          context.go('/class-tests/${classTest.id}');
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          classTest.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            classTest.subject,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      if (isUpcoming)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'UPCOMING',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.green[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      const SizedBox(height: 8),
                      FutureBuilder<bool>(
                        future: AuthService().isCurrentUserCR(),
                        builder: (context, snapshot) {
                          if (snapshot.data == true) {
                            return PopupMenuButton<String>(
                              onSelected: (value) {
                                if (value == 'edit') {
                                  AnalyticsService.logCustomEvent('class_test_edit_started', {
                                    'class_test_id': classTest.id ?? 'unknown',
                                    'subject': classTest.subject,
                                  });
                                  context.go('/class-tests/edit/${classTest.id}', extra: classTest);
                                } else if (value == 'delete') {
                                  AnalyticsService.logCustomEvent('class_test_delete_initiated', {
                                    'class_test_id': classTest.id ?? 'unknown',
                                    'subject': classTest.subject,
                                  });
                                  _showDeleteClassTestDialog(context, classTest);
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
                ],
              ),
              const SizedBox(height: 12),
              Text(
                classTest.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${classTest.testDate.day}/${classTest.testDate.month}/${classTest.testDate.year}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${classTest.testDate.hour}:${classTest.testDate.minute.toString().padLeft(2, '0')}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteClassTestDialog(BuildContext context, ClassTestModel classTest) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Class Test'),
        content: Text('Are you sure you want to delete "${classTest.title}"?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              AnalyticsService.logCustomEvent('class_test_delete_cancelled', {
                'class_test_id': classTest.id ?? 'unknown',
                'subject': classTest.subject,
              });
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                await _classTestsService.deleteClassTest(classTest.id!);
                
                Navigator.pop(dialogContext);
                
                // Track successful deletion
                AnalyticsService.logCustomEvent('class_test_deleted', {
                  'class_test_id': classTest.id ?? 'unknown',
                  'subject': classTest.subject,
                  'title': classTest.title,
                });
                
                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Class test deleted successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              } catch (e) {
                // Track deletion error
                AnalyticsService.logError('class_test_deletion_failed', e.toString(),
                    screen: 'class_tests');
                
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
