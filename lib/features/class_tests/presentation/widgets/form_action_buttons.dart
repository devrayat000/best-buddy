import 'package:flutter/material.dart';

class FormActionButtons extends StatelessWidget {
  final bool isLoading;
  final bool isEditing;
  final VoidCallback? onCancel;
  final VoidCallback? onSubmit;

  const FormActionButtons({
    super.key,
    required this.isLoading,
    required this.isEditing,
    this.onCancel,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: isLoading ? null : onCancel,
            child: const Text('Cancel'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: isLoading ? null : onSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: isLoading
                ? const SizedBox(
                    height: 16,
                    width: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(isEditing ? 'Update' : 'Create'),
          ),
        ),
      ],
    );
  }
}
