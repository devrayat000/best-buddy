import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(true) bool pushNotificationsEnabled,
    @Default(true) bool classTestRemindersEnabled,
    @Default('English') String language,
  }) = _SettingsState;
}
