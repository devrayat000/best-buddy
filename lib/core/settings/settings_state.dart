part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  const SettingsState({
    this.pushNotificationsEnabled = true,
    this.classTestRemindersEnabled = true,
    this.language = 'English',
  });

  final bool pushNotificationsEnabled;
  final bool classTestRemindersEnabled;
  final String language;

  SettingsState copyWith({
    bool? pushNotificationsEnabled,
    bool? classTestRemindersEnabled,
    String? language,
  }) {
    return SettingsState(
      pushNotificationsEnabled:
          pushNotificationsEnabled ?? this.pushNotificationsEnabled,
      classTestRemindersEnabled:
          classTestRemindersEnabled ?? this.classTestRemindersEnabled,
      language: language ?? this.language,
    );
  }

  @override
  List<Object> get props => [
        pushNotificationsEnabled,
        classTestRemindersEnabled,
        language,
      ];
}
