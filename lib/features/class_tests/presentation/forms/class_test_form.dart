import 'package:reactive_forms/reactive_forms.dart';
import '../../../../core/models/class_test_model.dart';

class ClassTestForm {
  static const String titleControlName = 'title';
  static const String subjectControlName = 'subject';
  static const String descriptionControlName = 'description';
  static const String testDateControlName = 'testDate';
  static const String locationControlName = 'location';
  static const String instructionsControlName = 'instructions';

  late final FormGroup form;

  ClassTestForm({ClassTestModel? initialData}) {
    form = FormGroup({
      titleControlName: FormControl<String>(
        value: initialData?.title,
        validators: [
          Validators.required,
          Validators.minLength(3),
        ],
      ),
      subjectControlName: FormControl<String>(
        value: initialData?.subject,
        validators: [
          Validators.required,
          Validators.minLength(2),
        ],
      ),
      descriptionControlName: FormControl<String>(
        value: initialData?.description,
        validators: [
          Validators.required,
          Validators.minLength(10),
        ],
      ),
      testDateControlName: FormControl<DateTime>(
        value: initialData?.testDate,
        validators: [
          Validators.required,
        ],
      ),
      locationControlName: FormControl<String>(
        value: initialData?.location,
      ),
      instructionsControlName: FormControl<String>(
        value: initialData?.instructions,
      ),
    });
  }

  String? get title => form.control(titleControlName).value;
  String? get subject => form.control(subjectControlName).value;
  String? get description => form.control(descriptionControlName).value;
  DateTime? get testDate => form.control(testDateControlName).value;
  String? get location => form.control(locationControlName).value;
  String? get instructions => form.control(instructionsControlName).value;

  bool get isValid => form.valid;

  void dispose() {
    form.dispose();
  }
}
