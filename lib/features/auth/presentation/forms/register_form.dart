import 'package:reactive_forms/reactive_forms.dart';

class RegisterForm {
  static const String nameControlName = 'name';
  static const String emailControlName = 'email';
  static const String passwordControlName = 'password';
  static const String confirmPasswordControlName = 'confirmPassword';
  static const String roleControlName = 'role';
  final FormGroup form = FormGroup({
    nameControlName: FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(2),
      ],
    ),
    emailControlName: FormControl<String>(
      validators: [
        Validators.required,
        Validators.email,
      ],
    ),
    passwordControlName: FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(6),
      ],
    ),
    confirmPasswordControlName: FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    roleControlName: FormControl<String>(
      value: 'student',
      validators: [
        Validators.required,
      ],
    ),
  }, validators: [
    Validators.mustMatch(passwordControlName, confirmPasswordControlName),
  ]);

  String? get name => form.control(nameControlName).value;
  String? get email => form.control(emailControlName).value;
  String? get password => form.control(passwordControlName).value;
  String? get role => form.control(roleControlName).value;

  bool get isValid => form.valid;

  void dispose() {
    form.dispose();
  }
}
