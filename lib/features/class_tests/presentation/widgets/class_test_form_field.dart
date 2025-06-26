import 'package:flutter/material.dart';

class ClassTestFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? hint;
  final String? Function(String?)? validator;
  final bool enabled;
  final int? maxLines;
  final bool required;

  const ClassTestFormField({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    this.validator,
    this.enabled = true,
    this.maxLines = 1,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: required ? '$label *' : label,
        hintText: hint,
        border: const OutlineInputBorder(),
        alignLabelWithHint: maxLines != null && maxLines! > 1,
      ),
      maxLines: maxLines,
      validator: validator,
      enabled: enabled,
    );
  }
}
