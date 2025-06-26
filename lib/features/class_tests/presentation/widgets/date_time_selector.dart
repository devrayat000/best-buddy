import 'package:flutter/material.dart';

class DateTimeSelector extends StatelessWidget {
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;
  final VoidCallback? onDateTap;
  final VoidCallback? onTimeTap;
  final bool enabled;
  final String? dateError;
  final String? timeError;

  const DateTimeSelector({
    super.key,
    this.selectedDate,
    this.selectedTime,
    this.onDateTap,
    this.onTimeTap,
    this.enabled = true,
    this.dateError,
    this.timeError,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: enabled ? onDateTap : null,
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: 'Test Date *',
                border: const OutlineInputBorder(),
                errorText: dateError,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedDate != null
                        ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                        : 'Select date',
                    style: TextStyle(
                      color: selectedDate != null
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
            onTap: enabled ? onTimeTap : null,
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: 'Test Time *',
                border: const OutlineInputBorder(),
                errorText: timeError,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedTime != null
                        ? selectedTime!.format(context)
                        : 'Select time',
                    style: TextStyle(
                      color: selectedTime != null
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
    );
  }
}
