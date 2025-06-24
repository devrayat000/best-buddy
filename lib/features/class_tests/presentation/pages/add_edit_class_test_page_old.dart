import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

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
  bool get isEditing => widget.classTest != null;

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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<ClassTestsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(isEditing ? 'Edit Class Test' : 'Add Class Test'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
          actions: [
            BlocBuilder<ClassTestsCubit, ClassTestsState>(
              builder: (context, state) {
                final isLoading = state is ClassTestsLoading;

                return TextButton(
                  onPressed: isLoading
                      ? null
                      : () async {
                          if (_classTestForm.form.valid) {
                            if (isEditing) {
                              await context.read<ClassTestsCubit>().updateClassTest(
                                    classTestId: widget.classTest!.id,
                                    title: _classTestForm.title!,
                                    description: _classTestForm.description!,
                                    subject: _classTestForm.subject!,
                                    testDate: _classTestForm.testDate!,
                                    syllabus: _classTestForm.syllabus,
                                    instructions: _classTestForm.instructions,
                                  );
                            } else {
                              await context.read<ClassTestsCubit>().addClassTest(
                                    title: _classTestForm.title!,
                                    description: _classTestForm.description!,
                                    subject: _classTestForm.subject!,
                                    testDate: _classTestForm.testDate!,
                                    syllabus: _classTestForm.syllabus,
                                    instructions: _classTestForm.instructions,
                                  );
                            }
                          }
                        },
                  child: isLoading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(isEditing ? 'Update' : 'Save'),
                );
              },
            ),
          ],
        ),
        body: BlocListener<ClassTestsCubit, ClassTestsState>(
          listener: (context, state) {
            if (state is ClassTestsSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isEditing
                      ? 'Class test updated successfully'
                      : 'Class test added successfully'),
                  backgroundColor: Colors.green,
                ),
              );
              context.pop();
            } else if (state is ClassTestsError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ReactiveForm(
                formGroup: _classTestForm.form,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Title Field
                      const ClassTestFormField(
                        controlName: ClassTestForm.titleControlName,
                        labelText: 'Title',
                        hintText: 'Enter class test title',
                        prefixIcon: Icons.title,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 16),

                      // Subject Field
                      const ClassTestFormField(
                        controlName: ClassTestForm.subjectControlName,
                        labelText: 'Subject',
                        hintText: 'Enter subject name',
                        prefixIcon: Icons.subject,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 16),

                      // Test Date Field
                      ReactiveTextField<DateTime>(
                        formControlName: ClassTestForm.testDateControlName,
                        decoration: const InputDecoration(
                          labelText: 'Test Date',
                          hintText: 'Select test date',
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                        readOnly: true,
                        onTap: (control) async {
                          final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: control.value ?? DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(const Duration(days: 365)),
                          );
                          if (selectedDate != null) {
                            control.updateValue(selectedDate);
                          }
                        },
                        valueAccessor: ControlValueAccessor<DateTime, String>(
                          modelToViewValue: (modelValue) => modelValue != null
                              ? '${modelValue.day}/${modelValue.month}/${modelValue.year}'
                              : '',
                          viewToModelValue: (viewValue) => null,
                        ),
                        validationMessages: {
                          ValidationMessage.required: (error) =>
                              'Test date is required',
                        },
                      ),
                      const SizedBox(height: 16),

                      // Description Field
                      const ClassTestFormField(
                        controlName: ClassTestForm.descriptionControlName,
                        labelText: 'Description',
                        hintText: 'Enter class test description',
                        prefixIcon: Icons.description,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 16),

                      // Syllabus Field
                      const ClassTestFormField(
                        controlName: ClassTestForm.syllabusControlName,
                        labelText: 'Syllabus (Optional)',
                        hintText: 'Enter syllabus details',
                        prefixIcon: Icons.list_alt,
                        maxLines: 5,
                      ),
                      const SizedBox(height: 16),

                      // Instructions Field
                      const ClassTestFormField(
                        controlName: ClassTestForm.instructionsControlName,
                        labelText: 'Instructions (Optional)',
                        hintText: 'Enter any special instructions',
                        prefixIcon: Icons.info_outline,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 24),

                      // Form Validation Status
                      ReactiveFormConsumer(
                        builder: (context, form, child) {
                          if (form.hasErrors && form.touched) {
                            return Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.red.shade200),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    color: Colors.red.shade600,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Please fix the errors above',
                                      style: TextStyle(
                                        color: Colors.red.shade600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(height: 100), // Space for FAB
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
