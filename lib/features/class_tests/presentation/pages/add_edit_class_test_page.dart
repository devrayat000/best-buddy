import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/models/class_test_model.dart';
import '../../cubit/class_tests_cubit.dart';

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
  
  late final ClassTestsCubit _classTestsCubit;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  bool _isLoading = false;

  bool get _isEditing => widget.classTest != null;

  @override
  void initState() {
    super.initState();
    _classTestsCubit = GetIt.I<ClassTestsCubit>();
    
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
                      _isEditing ? 'Edit Class Test' : 'Add Class Test',
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
                          hintText: 'Enter test title',
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
                      
                      // Subject field
                      TextFormField(
                        controller: _subjectController,
                        decoration: const InputDecoration(
                          labelText: 'Subject *',
                          hintText: 'Enter subject name',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 1,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Subject is required';
                          }
                          return null;
                        },
                        enabled: !_isLoading,
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Test Date and Time
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: _isLoading ? null : _selectDate,
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  labelText: 'Test Date *',
                                  border: const OutlineInputBorder(),
                                  errorText: _selectedDate == null && _isLoading == false 
                                      ? 'Date is required' 
                                      : null,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _selectedDate != null
                                          ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                          : 'Select date',
                                      style: TextStyle(
                                        color: _selectedDate != null
                                            ? null
                                            : Colors.grey[600],
                                      ),
                                    ),
                                    const Icon(Icons.calendar_today),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: InkWell(
                              onTap: _isLoading ? null : _selectTime,
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  labelText: 'Test Time *',
                                  border: const OutlineInputBorder(),
                                  errorText: _selectedTime == null && _isLoading == false 
                                      ? 'Time is required' 
                                      : null,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _selectedTime != null
                                          ? _selectedTime!.format(context)
                                          : 'Select time',
                                      style: TextStyle(
                                        color: _selectedTime != null
                                            ? null
                                            : Colors.grey[600],
                                      ),
                                    ),
                                    const Icon(Icons.access_time),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Location field (optional)
                      TextFormField(
                        controller: _locationController,
                        decoration: const InputDecoration(
                          labelText: 'Location',
                          hintText: 'Enter test location (optional)',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 1,
                        enabled: !_isLoading,
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Description field
                      TextFormField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          labelText: 'Description *',
                          hintText: 'Enter test description',
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                        ),
                        maxLines: 4,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Description is required';
                          }
                          if (value.trim().length < 10) {
                            return 'Description must be at least 10 characters';
                          }
                          return null;
                        },
                        enabled: !_isLoading,
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Instructions field (optional)
                      TextFormField(
                        controller: _instructionsController,
                        decoration: const InputDecoration(
                          labelText: 'Instructions',
                          hintText: 'Enter test instructions (optional)',
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                        ),
                        maxLines: 3,
                        enabled: !_isLoading,
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Action buttons
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: _isLoading ? null : () => context.pop(),
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
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
        await _classTestsCubit.updateClassTest(
          widget.classTest!.id!,
          UpdateClassTestModel(
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
          ),
        );
      } else {
        await _classTestsCubit.createClassTest(
          CreateClassTestModel(
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
          ),
        );
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
