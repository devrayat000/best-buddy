import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/settings/settings_cubit.dart';
import '../../../../core/services/analytics_service.dart';

class LanguageDialogPage extends StatelessWidget {
  const LanguageDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsCubit = context.read<SettingsCubit>();
    final currentLanguage = settingsCubit.state.language;

    return AlertDialog(
      title: const Text('Choose Language'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile<String>(
            title: const Text('English'),
            value: 'English',
            groupValue: currentLanguage,
            onChanged: (value) {
              if (value != null) {
                settingsCubit.setLanguage(value);
                AnalyticsService.logLanguageChange(value);
                context.pop();
              }
            },
          ),
          RadioListTile<String>(
            title: const Text('Spanish'),
            value: 'Spanish',
            groupValue: currentLanguage,
            onChanged: (value) {
              if (value != null) {
                settingsCubit.setLanguage(value);
                AnalyticsService.logLanguageChange(value);
                context.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Language support coming soon!')),
                );
              }
            },
          ),
          RadioListTile<String>(
            title: const Text('French'),
            value: 'French',
            groupValue: currentLanguage,
            onChanged: (value) {
              if (value != null) {
                settingsCubit.setLanguage(value);
                AnalyticsService.logLanguageChange(value);
                context.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Language support coming soon!')),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
