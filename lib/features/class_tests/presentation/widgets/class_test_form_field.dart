import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ClassTestFormField extends StatelessWidget {
  final String controlName;
  final String labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final int? maxLines;
  final bool readOnly;
  final VoidCallback? onTap;

  const ClassTestFormField({
    super.key,
    required this.controlName,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.maxLines = 1,
    this.readOnly = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: controlName,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      readOnly: readOnly,
      onTap: (_) => onTap?.call(),
      validationMessages: {
        ValidationMessage.required: (_) => '$labelText is required',
        ValidationMessage.minLength: (error) =>
            '$labelText must be at least ${(error as Map)['requiredLength']} characters',
      },
    );
  }
}
