import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/auth/auth_service.dart';
import '../../../../core/models/class_test_model.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/services/analytics_service.dart';
import '../widgets/class_test_form_field.dart';
import '../widgets/date_time_selector.dart';
import '../widgets/form_action_buttons.dart';
import '../widgets/dialog_header.dart';

class AddEditClassTestPage extends StatefulWidget {
  final ClassTestModel? classTest;

  const AddEditClassTestPage({
    super.key,
    this.classTest,
  });

  @override
  State<AddEditClassTestPage> createState() => _AddEditClassTestPageState();
}

class _AddEditClassTestPageState extends State<AddEditClassTestPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _subjectController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _instructionsController = TextEditingController();
  
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  bool _isLoading = false;

  bool get _isEditing => widget.classTest != null;

  @override
  void initState() {
    super.initState();
    
    // Log screen visit
    AnalyticsService.logScreenView(_isEditing ? 'edit_class_test_screen' : 'add_class_test_screen');
    
    if (_isEditing) {
      final classTest = widget.classTest!;
      _titleController.text = classTest.title;
      _subjectController.text = classTest.subject;
      _descriptionController.text = classTest.description;
      _locationController.text = classTest.location ?? '';
      _instructionsController.text = classTest.instructions ?? '';
      _selectedDate = DateTime(
        classTest.testDate.year,
        classTest.testDate.month,
        classTest.testDate.day,
      );
      _selectedTime = TimeOfDay(
        hour: classTest.testDate.hour,
        minute: classTest.testDate.minute,
      );
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subjectController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    _instructionsController.dispose();
    super.dispose();
  }

  DateTime? get _combinedDateTime {
    if (_selectedDate == null || _selectedTime == null) return null;
    return DateTime(
      _selectedDate!.year,
      _selectedDate!.month,
      _selectedDate!.day,
      _selectedTime!.hour,
      _selectedTime!.minute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          maxWidth: 700,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            DialogHeader(
              title: _isEditing ? 'Edit Class Test' : 'Add Class Test',
              isLoading: _isLoading,
              onClose: () => context.pop(),
            ),
            
            // Form content
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: _buildForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title field
          ClassTestFormField(
            controller: _titleController,
            label: 'Title',
            hint: 'Enter test title',
            required: true,
            enabled: !_isLoading,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Title is required';
              }
              if (value.trim().length < 3) {
                return 'Title must be at least 3 characters';
              }
              return null;
            },
          ),
          
          const SizedBox(height: 16),
          
          // Subject field
          ClassTestFormField(
            controller: _subjectController,
            label: 'Subject',
            hint: 'Enter subject name',
            required: true,
            enabled: !_isLoading,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Subject is required';
              }
              return null;
            },
          ),
          
          const SizedBox(height: 16),
          
          // Test Date and Time
          DateTimeSelector(
            selectedDate: _selectedDate,
            selectedTime: _selectedTime,
            onDateTap: _selectDate,
            onTimeTap: _selectTime,
            enabled: !_isLoading,
            dateError: _selectedDate == null && _isLoading == false 
                ? 'Date is required' 
                : null,
            timeError: _selectedTime == null && _isLoading == false 
                ? 'Time is required' 
                : null,
          ),
          
          const SizedBox(height: 16),
          
          // Location field (optional)
          ClassTestFormField(
            controller: _locationController,
            label: 'Location',
            hint: 'Enter test location (optional)',
            enabled: !_isLoading,
          ),
          
          const SizedBox(height: 16),
          
          // Description field
          ClassTestFormField(
            controller: _descriptionController,
            label: 'Description',
            hint: 'Enter test description',
            maxLines: 4,
            required: true,
            enabled: !_isLoading,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Description is required';
              }
              if (value.trim().length < 10) {
                return 'Description must be at least 10 characters';
              }
              return null;
            },
          ),
          
          const SizedBox(height: 16),
          
          // Instructions field (optional)
          ClassTestFormField(
            controller: _instructionsController,
            label: 'Instructions',
            hint: 'Enter test instructions (optional)',
            maxLines: 3,
            enabled: !_isLoading,
          ),
          
          const SizedBox(height: 24),
          
          // Action buttons
          FormActionButtons(
            isLoading: _isLoading,
            isEditing: _isEditing,
            onCancel: () => context.pop(),
            onSubmit: _submitForm,
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate() async {
    final now = DateTime.now();
    final initialDate = _selectedDate ?? now;
    
    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate.isBefore(now) ? now : initialDate,
      firstDate: now,
      lastDate: DateTime(now.year + 5),
    );
    
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime() async {
    final initialTime = _selectedTime ?? TimeOfDay.now();
    
    final picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_selectedDate == null || _selectedTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select both date and time'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final testDateTime = _combinedDateTime!;
    if (testDateTime.isBefore(DateTime.now())) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Test date and time must be in the future'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      if (_isEditing) {
        await classTestsRef.doc(widget.classTest!.id!).set(
          widget.classTest!.copyWith(
            title: _titleController.text.trim(),
            subject: _subjectController.text.trim(),
            description: _descriptionController.text.trim(),
            testDate: testDateTime,
            location: _locationController.text.trim().isEmpty 
                ? null 
                : _locationController.text.trim(),
            instructions: _instructionsController.text.trim().isEmpty 
                ? null 
                : _instructionsController.text.trim(),
            updatedAt: DateTime.now(),
          ),
        );
        
        // Track successful update
        AnalyticsService.logCustomEvent('class_test_updated', {
          'class_test_id': widget.classTest!.id ?? 'unknown',
          'subject': _subjectController.text.trim(),
          'title': _titleController.text.trim(),
        });
      } else {
        final authService = AuthService();
        final user = authService.currentUser;
        final userRole = await authService.getCurrentUserRole();
        
        await classTestsRef.add(ClassTestModel(
          title: _titleController.text.trim(),
          subject: _subjectController.text.trim(),
          description: _descriptionController.text.trim(),
          testDate: testDateTime,
          createdById: user?.uid ?? '',
          createdByName: user?.displayName ?? user?.email ?? '',
          createdByRole: userRole == 'CR' ? UserRole.cr : UserRole.student,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          location: _locationController.text.trim().isEmpty 
              ? null 
              : _locationController.text.trim(),
          instructions: _instructionsController.text.trim().isEmpty 
              ? null 
              : _instructionsController.text.trim(),
        ));
        
        // Track successful creation
        AnalyticsService.logCustomEvent('class_test_created', {
          'subject': _subjectController.text.trim(),
          'title': _titleController.text.trim(),
          'test_date': testDateTime.toIso8601String(),
        });
      }

      if (mounted) {
        context.pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              _isEditing
                  ? 'Class test updated successfully!'
                  : 'Class test created successfully!',
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
