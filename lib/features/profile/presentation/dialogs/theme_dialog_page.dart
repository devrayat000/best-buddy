import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/theme_cubit.dart';
import '../../../../core/services/analytics_service.dart';

class ThemeDialogPage extends StatelessWidget {
  const ThemeDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return AlertDialog(
          title: const Text('Choose Theme'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<ThemeMode>(
                title: const Text('Light'),
                value: ThemeMode.light,
                groupValue: themeState.themeMode,
                onChanged: (value) {
                  if (value != null) {
                    themeCubit.setThemeMode(value);
                    AnalyticsService.logThemeChange(value.name);
                    context.pop();
                  }
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text('Dark'),
                value: ThemeMode.dark,
                groupValue: themeState.themeMode,
                onChanged: (value) {
                  if (value != null) {
                    themeCubit.setThemeMode(value);
                    AnalyticsService.logThemeChange(value.name);
                    context.pop();
                  }
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text('System'),
                value: ThemeMode.system,
                groupValue: themeState.themeMode,
                onChanged: (value) {
                  if (value != null) {
                    themeCubit.setThemeMode(value);
                    AnalyticsService.logThemeChange(value.name);
                    context.pop();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
