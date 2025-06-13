// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsState {
  bool get pushNotificationsEnabled;
  bool get classTestRemindersEnabled;
  String get language;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      _$SettingsStateCopyWithImpl<SettingsState>(
          this as SettingsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsState &&
            (identical(
                    other.pushNotificationsEnabled, pushNotificationsEnabled) ||
                other.pushNotificationsEnabled == pushNotificationsEnabled) &&
            (identical(other.classTestRemindersEnabled,
                    classTestRemindersEnabled) ||
                other.classTestRemindersEnabled == classTestRemindersEnabled) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushNotificationsEnabled,
      classTestRemindersEnabled, language);

  @override
  String toString() {
    return 'SettingsState(pushNotificationsEnabled: $pushNotificationsEnabled, classTestRemindersEnabled: $classTestRemindersEnabled, language: $language)';
  }
}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) _then) =
      _$SettingsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool pushNotificationsEnabled,
      bool classTestRemindersEnabled,
      String language});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotificationsEnabled = null,
    Object? classTestRemindersEnabled = null,
    Object? language = null,
  }) {
    return _then(_self.copyWith(
      pushNotificationsEnabled: null == pushNotificationsEnabled
          ? _self.pushNotificationsEnabled
          : pushNotificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      classTestRemindersEnabled: null == classTestRemindersEnabled
          ? _self.classTestRemindersEnabled
          : classTestRemindersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SettingsState implements SettingsState {
  const _SettingsState(
      {this.pushNotificationsEnabled = true,
      this.classTestRemindersEnabled = true,
      this.language = 'English'});

  @override
  @JsonKey()
  final bool pushNotificationsEnabled;
  @override
  @JsonKey()
  final bool classTestRemindersEnabled;
  @override
  @JsonKey()
  final String language;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            (identical(
                    other.pushNotificationsEnabled, pushNotificationsEnabled) ||
                other.pushNotificationsEnabled == pushNotificationsEnabled) &&
            (identical(other.classTestRemindersEnabled,
                    classTestRemindersEnabled) ||
                other.classTestRemindersEnabled == classTestRemindersEnabled) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushNotificationsEnabled,
      classTestRemindersEnabled, language);

  @override
  String toString() {
    return 'SettingsState(pushNotificationsEnabled: $pushNotificationsEnabled, classTestRemindersEnabled: $classTestRemindersEnabled, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) _then) =
      __$SettingsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool pushNotificationsEnabled,
      bool classTestRemindersEnabled,
      String language});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pushNotificationsEnabled = null,
    Object? classTestRemindersEnabled = null,
    Object? language = null,
  }) {
    return _then(_SettingsState(
      pushNotificationsEnabled: null == pushNotificationsEnabled
          ? _self.pushNotificationsEnabled
          : pushNotificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      classTestRemindersEnabled: null == classTestRemindersEnabled
          ? _self.classTestRemindersEnabled
          : classTestRemindersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
