import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'settings_state.dart';
export 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void togglePushNotifications(bool enabled) {
    emit(state.copyWith(pushNotificationsEnabled: enabled));
  }

  void toggleClassTestReminders(bool enabled) {
    emit(state.copyWith(classTestRemindersEnabled: enabled));
  }

  void setLanguage(String language) {
    emit(state.copyWith(language: language));
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    try {
      return SettingsState(
        pushNotificationsEnabled:
            json['pushNotificationsEnabled'] as bool? ?? true,
        classTestRemindersEnabled:
            json['classTestRemindersEnabled'] as bool? ?? true,
        language: json['language'] as String? ?? 'English',
      );
    } catch (_) {
      return const SettingsState();
    }
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return {
      'pushNotificationsEnabled': state.pushNotificationsEnabled,
      'classTestRemindersEnabled': state.classTestRemindersEnabled,
      'language': state.language,
    };
  }
}
