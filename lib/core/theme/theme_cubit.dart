import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(ThemeMode.system));

  void setThemeMode(ThemeMode themeMode) {
    emit(ThemeState(themeMode));
  }

  void setLightTheme() {
    emit(const ThemeState(ThemeMode.light));
  }

  void setDarkTheme() {
    emit(const ThemeState(ThemeMode.dark));
  }

  void setSystemTheme() {
    emit(const ThemeState(ThemeMode.system));
  }

  String get currentThemeText {
    switch (state.themeMode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System';
    }
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    try {
      final themeIndex = json['themeMode'] as int;
      return ThemeState(ThemeMode.values[themeIndex]);
    } catch (_) {
      return const ThemeState(ThemeMode.system);
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {
      'themeMode': state.themeMode.index,
    };
  }
}
