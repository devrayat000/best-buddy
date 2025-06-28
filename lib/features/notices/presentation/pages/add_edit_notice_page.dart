import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/auth/auth_service.dart';
import '../../../../core/models/notice_model.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/services/analytics_service.dart';

class AddEditNoticePage extends StatefulWidget {
  final NoticeModel? existingNotice;

  const AddEditNoticePage({
    super.key,
    this.existingNotice,
  });

  @override
  State<AddEditNoticePage> createState() => _AddEditNoticePageState();
}

class _AddEditNoticePageState extends State<AddEditNoticePage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  bool _isLoading = false;

  bool get _isEditing => widget.existingNotice != null;

  @override
  void initState() {
    super.initState();

    // Log screen visit
    AnalyticsService.logScreenView(
        _isEditing ? 'edit_notice_screen' : 'add_notice_screen');

    if (_isEditing) {
      _titleController.text = widget.existingNotice!.title;
      _contentController.text = widget.existingNotice!.content;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
          maxWidth: 600,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _isEditing ? 'Edit Notice' : 'Add Notice',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: _isLoading ? null : () => context.pop(),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Form content
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title field
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          labelText: 'Title *',
                          hintText: 'Enter notice title',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 1,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Title is required';
                          }
                          if (value.trim().length < 3) {
                            return 'Title must be at least 3 characters';
                          }
                          return null;
                        },
                        enabled: !_isLoading,
                      ),

                      const SizedBox(height: 16),

                      // Content field
                      TextFormField(
                        controller: _contentController,
                        decoration: const InputDecoration(
                          labelText: 'Content *',
                          hintText: 'Enter notice content',
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                        ),
                        maxLines: 8,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Content is required';
                          }
                          if (value.trim().length < 10) {
                            return 'Content must be at least 10 characters';
                          }
                          return null;
                        },
                        enabled: !_isLoading,
                      ),

                      const SizedBox(height: 24),

                      // Action buttons
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed:
                                  _isLoading ? null : () => context.pop(),
                              child: const Text('Cancel'),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: _isLoading ? null : _submitForm,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                              ),
                              child: _isLoading
                                  ? const SizedBox(
                                      height: 16,
                                      width: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                      ),
                                    )
                                  : Text(_isEditing ? 'Update' : 'Create'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      if (_isEditing) {
        // await noticesRef.doc(widget.existingNotice!.id!).set(
        //   widget.existingNotice!.copyWith(
        //     title: _titleController.text.trim(),
        //     content: _contentController.text.trim(),
        //     updatedAt: DateTime.now(),
        //   ),
        // );

        // Track successful update
        AnalyticsService.logCustomEvent('notice_updated', {
          'notice_id': widget.existingNotice!.id!,
          'title': _titleController.text.trim(),
        });
      } else {
        final authService = AuthService();
        final user = authService.currentUser;
        final userRole = await authService.getCurrentUserRole();

        // await noticesRef.add(NoticeModel(
        //   title: _titleController.text.trim(),
        //   content: _contentController.text.trim(),
        //   createdById: user?.uid ?? '',
        //   createdByName: user?.displayName ?? user?.email ?? '',
        //   createdByRole: userRole == 'CR' ? UserRole.cr : UserRole.student,
        //   createdAt: DateTime.now(),
        //   updatedAt: DateTime.now(),
        // ));

        // Track successful creation
        AnalyticsService.logCustomEvent('notice_created', {
          'title': _titleController.text.trim(),
        });
      }

      if (mounted) {
        context.pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              _isEditing
                  ? 'Notice updated successfully!'
                  : 'Notice created successfully!',
            ),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
