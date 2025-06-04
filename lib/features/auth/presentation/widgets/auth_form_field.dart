import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthFormField extends StatelessWidget {
  final String controlName;
  final String labelText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const AuthFormField({
    super.key,
    required this.controlName,
    required this.labelText,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: controlName,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      validationMessages: {
        ValidationMessage.required: (_) => 'This field is required',
        ValidationMessage.email: (_) => 'Please enter a valid email',
        ValidationMessage.minLength: (error) =>
            'Minimum ${(error as Map)['requiredLength']} characters required',
        'passwordMismatch': (_) => 'Passwords do not match',
      },
    );
  }
}
