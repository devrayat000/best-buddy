import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@Freezed(equal: true, copyWith: true, fromJson: false, toJson: false)
sealed class ThemeState with _$ThemeState {
  const factory ThemeState(ThemeMode themeMode) = _ThemeState;
}
