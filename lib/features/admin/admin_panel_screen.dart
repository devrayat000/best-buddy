import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../core/auth/auth_cubit.dart';
import '../../core/models/notice_model.dart';
import '../../core/models/class_test_model.dart';
import '../notices/cubit/notices_cubit.dart';
import '../class_tests/cubit/class_tests_cubit.dart';

class AdminPanelScreen extends StatelessWidget {
  const AdminPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.I<NoticesCubit>()..loadNotices()),
        BlocProvider(create: (_) => GetIt.I<ClassTestsCubit>()..loadClassTests()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CR Panel'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, authState) {
            if (authState is! AuthAuthenticated) {
              return const Center(
                child: Text('You must be logged in to access the CR panel'),
              );
            }

            if (authState.role != 'cr') {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      size: 64,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Access Denied',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'You need CR privileges to access this page.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              );
            }

            return const AdminPanelContent();
          },
        ),
      ),
    );
  }
}

class AdminPanelContent extends StatefulWidget {
  const AdminPanelContent({super.key});

  @override
  State<AdminPanelContent> createState() => _AdminPanelContentState();
}

class _AdminPanelContentState extends State<AdminPanelContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Notices', icon: Icon(Icons.announcement)),
            Tab(text: 'Class Tests', icon: Icon(Icons.quiz)),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              NoticesAdminTab(),
              ClassTestsAdminTab(),
            ],
          ),
        ),
      ],
    );
  }
}

class NoticesAdminTab extends StatelessWidget {
  const NoticesAdminTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton.icon(
            onPressed: () => _showCreateNoticeDialog(context),
            icon: const Icon(Icons.add),
            label: const Text('Create Notice'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<NoticesCubit, NoticesState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('Loading...')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (notices) => ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: notices.length,
                  itemBuilder: (context, index) {
                    final notice = notices[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        title: Text(notice.title),
                        subtitle: Text(
                          notice.content,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: PopupMenuButton(
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 'edit',
                              child: Row(
                                children: [
                                  Icon(Icons.edit),
                                  SizedBox(width: 8),
                                  Text('Edit'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Colors.red),
                                  SizedBox(width: 8),
                                  Text('Delete'),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == 'edit') {
                              _showEditNoticeDialog(context, notice);
                            } else if (value == 'delete') {
                              _showDeleteNoticeDialog(context, notice);
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
                error: (message) => Center(
                  child: Text('Error: $message'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showCreateNoticeDialog(BuildContext context) {
    final titleController = TextEditingController();
    final contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Notice'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isNotEmpty &&
                  contentController.text.isNotEmpty) {
                context.read<NoticesCubit>().createNotice(
                      CreateNoticeModel(
                        title: titleController.text,
                        content: contentController.text,
                      ),
                    );
                Navigator.pop(context);
              }
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _showEditNoticeDialog(BuildContext context, NoticeModel notice) {
    final titleController = TextEditingController(text: notice.title);
    final contentController = TextEditingController(text: notice.content);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Notice'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // context.read<NoticesCubit>().updateNotice(
              //   notice.id,
              //   UpdateNoticeModel(
              //     title: titleController.text,
              //     content: contentController.text,
              //   ),
              // );
              Navigator.pop(context);
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }

  void _showDeleteNoticeDialog(BuildContext context, NoticeModel notice) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Notice'),
        content: Text('Are you sure you want to delete "${notice.title}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // context.read<NoticesCubit>().deleteNotice(notice.id);
              Navigator.pop(context);
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

class ClassTestsAdminTab extends StatelessWidget {
  const ClassTestsAdminTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton.icon(
            onPressed: () => _showCreateClassTestDialog(context),
            icon: const Icon(Icons.add),
            label: const Text('Create Class Test'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<ClassTestsCubit, ClassTestsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('Loading...')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (classTests) => ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: classTests.length,
                  itemBuilder: (context, index) {
                    final classTest = classTests[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        title: Text(classTest.title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Subject: ${classTest.subject}'),
                            Text(
                              'Date: ${classTest.testDate.day}/${classTest.testDate.month}/${classTest.testDate.year}',
                            ),
                          ],
                        ),
                        trailing: PopupMenuButton(
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 'edit',
                              child: Row(
                                children: [
                                  Icon(Icons.edit),
                                  SizedBox(width: 8),
                                  Text('Edit'),
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Colors.red),
                                  SizedBox(width: 8),
                                  Text('Delete'),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == 'edit') {
                              _showEditClassTestDialog(context, classTest);
                            } else if (value == 'delete') {
                              _showDeleteClassTestDialog(context, classTest);
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
                error: (message) => Center(
                  child: Text('Error: $message'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showCreateClassTestDialog(BuildContext context) {
    final titleController = TextEditingController();
    final subjectController = TextEditingController();
    final descriptionController = TextEditingController();
    DateTime? selectedDate;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: const Text('Create Class Test'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: subjectController,
                  decoration: const InputDecoration(
                    labelText: 'Subject',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                ListTile(
                  title: Text(
                    selectedDate == null
                        ? 'Select Test Date'
                        : 'Test Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                  ),
                  leading: const Icon(Icons.calendar_today),
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    if (date != null) {
                      setState(() => selectedDate = date);
                    }
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    subjectController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty &&
                    selectedDate != null) {
                  context.read<ClassTestsCubit>().createClassTest(
                        CreateClassTestModel(
                          title: titleController.text,
                          subject: subjectController.text,
                          description: descriptionController.text,
                          testDate: selectedDate!,
                        ),
                      );
                  Navigator.pop(context);
                }
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditClassTestDialog(BuildContext context, ClassTestModel classTest) {
    // Similar implementation to create but with pre-filled data
    Navigator.pop(context); // Placeholder
  }

  void _showDeleteClassTestDialog(BuildContext context, ClassTestModel classTest) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Class Test'),
        content: Text('Are you sure you want to delete "${classTest.title}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // context.read<ClassTestsCubit>().deleteClassTest(classTest.id);
              Navigator.pop(context);
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
