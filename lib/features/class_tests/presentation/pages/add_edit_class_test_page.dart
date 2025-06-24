import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/models/class_test_model.dart';
import '../../cubit/class_tests_cubit.dart';
import '../forms/class_test_form.dart';
import '../widgets/class_test_form_field.dart';

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
  late final ClassTestForm _classTestForm;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _classTestForm = ClassTestForm(initialData: widget.classTest);
  }

  @override
  void dispose() {
    _classTestForm.dispose();
    super.dispose();
  }

  bool get _isEditing => widget.classTest != null;

  Future<void> _saveClassTest() async {
    if (!_classTestForm.isValid) return;

    setState(() {
      _isLoading = true;
    });

    try {
      if (_isEditing) {
        // Update existing class test
        final updateModel = UpdateClassTestModel(
          title: _classTestForm.title,
          subject: _classTestForm.subject,
          description: _classTestForm.description,
          testDate: _classTestForm.testDate,
          location: _classTestForm.location,
          instructions: _classTestForm.instructions,
        );
        await context.read<ClassTestsCubit>().updateClassTest(
          widget.classTest!.id!,
          updateModel,
        );
      } else {
        // Create new class test
        final createModel = CreateClassTestModel(
          title: _classTestForm.title!,
          subject: _classTestForm.subject!,
          description: _classTestForm.description!,
          testDate: _classTestForm.testDate!,
          location: _classTestForm.location,
          instructions: _classTestForm.instructions,
        );
        await context.read<ClassTestsCubit>().createClassTest(createModel);
      }

      if (mounted) {
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving class test: $e'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? 'Edit Class Test' : 'Add Class Test'),
        actions: [
          TextButton(
            onPressed: _isLoading ? null : _saveClassTest,
            child: _isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Save'),
          ),
        ],
      ),
      body: ReactiveForm(
        formGroup: _classTestForm.form,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Title Field
                      ClassTestFormField(
                        controlName: ClassTestForm.titleControlName,
                        labelText: 'Title *',
                        hintText: 'Enter class test title',
                        keyboardType: TextInputType.text,
                        prefixIcon: Icons.title,
                      ),
                      const SizedBox(height: 16),

                      // Subject Field
                      ClassTestFormField(
                        controlName: ClassTestForm.subjectControlName,
                        labelText: 'Subject *',
                        hintText: 'Enter subject name',
                        keyboardType: TextInputType.text,
                        prefixIcon: Icons.book,
                      ),
                      const SizedBox(height: 16),

                      // Description Field
                      ClassTestFormField(
                        controlName: ClassTestForm.descriptionControlName,
                        labelText: 'Description *',
                        hintText: 'Enter class test description',
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        prefixIcon: Icons.description,
                      ),
                      const SizedBox(height: 16),

                      // Test Date Field
                      ReactiveTextField<DateTime>(
                        formControlName: ClassTestForm.testDateControlName,
                        decoration: const InputDecoration(
                          labelText: 'Test Date *',
                          hintText: 'Select test date',
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                        readOnly: true,                          onTap: (control) async {
                            final now = DateTime.now();
                            final initialDate = control.value ?? now;
                            final date = await showDatePicker(
                              context: context,
                              initialDate: initialDate.isAfter(now) ? initialDate : now,
                              firstDate: now,
                              lastDate: now.add(const Duration(days: 365)),
                            );
                            if (date != null && mounted) {
                              final time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.fromDateTime(initialDate),
                              );
                              if (time != null) {
                                final dateTime = DateTime(
                                  date.year,
                                  date.month,
                                  date.day,
                                  time.hour,
                                  time.minute,
                                );
                                control.value = dateTime;
                              }
                            }
                          },
                        valueAccessor: DateTimeValueAccessor(
                          dateTimeFormat: 'MMM dd, yyyy - hh:mm a',
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Location Field
                      ClassTestFormField(
                        controlName: ClassTestForm.locationControlName,
                        labelText: 'Location',
                        hintText: 'Enter test location (optional)',
                        keyboardType: TextInputType.text,
                        prefixIcon: Icons.location_on,
                      ),
                      const SizedBox(height: 16),

                      // Instructions Field
                      ClassTestFormField(
                        controlName: ClassTestForm.instructionsControlName,
                        labelText: 'Instructions',
                        hintText: 'Enter additional instructions (optional)',
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        prefixIcon: Icons.info_outline,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateTimeValueAccessor extends ControlValueAccessor<DateTime, String> {
  final String dateTimeFormat;

  DateTimeValueAccessor({
    this.dateTimeFormat = 'yyyy-MM-dd HH:mm',
  });

  @override
  String? modelToViewValue(DateTime? modelValue) {
    if (modelValue == null) return null;
    
    // Simple date formatting
    final month = _monthNames[modelValue.month - 1];
    final day = modelValue.day.toString().padLeft(2, '0');
    final year = modelValue.year;
    final hour = modelValue.hour == 0 ? 12 : (modelValue.hour > 12 ? modelValue.hour - 12 : modelValue.hour);
    final minute = modelValue.minute.toString().padLeft(2, '0');
    final amPm = modelValue.hour >= 12 ? 'PM' : 'AM';
    
    return '$month $day, $year - ${hour.toString().padLeft(2, '0')}:$minute $amPm';
  }

  @override
  DateTime? viewToModelValue(String? viewValue) {
    // This won't be used since we're setting the value directly in onTap
    return null;
  }

  static const List<String> _monthNames = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];
}
