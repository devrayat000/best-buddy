import 'package:reactive_forms/reactive_forms.dart';

class LoginForm {
  static const String emailControlName = 'email';
  static const String passwordControlName = 'password';
  final FormGroup form = FormGroup({
    emailControlName: FormControl<String>(
      validators: [
        Validators.required,
        // Remove email validation since we're accepting student ID
      ],
    ),
    passwordControlName: FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(6),
      ],
    ),
  });
  String? get email {
    final rawEmail = form.control(emailControlName).value as String?;
    if (rawEmail == null || rawEmail.isEmpty) return null;
    // Transform student ID to full email format like React Native version
    if (!rawEmail.contains('@')) {
      return '$rawEmail@me.buet.ac.bd';
    }
    return rawEmail;
  }

  String? get password => form.control(passwordControlName).value;

  bool get isValid => form.valid;

  void dispose() {
    form.dispose();
  }
}
