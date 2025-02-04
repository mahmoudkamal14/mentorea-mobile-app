import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/app/logic/app_state.dart';
import 'package:mentorea_mobile_app/core/cache/shared_pref_helper.dart';

enum ThemeModeState { light, dark, system }

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState()) {
    _loadTheme();
  }

  static AppCubit get(context) => BlocProvider.of(context);

  ThemeModeState currentTheme = ThemeModeState.system;

  Future<void> setTheme(ThemeModeState theme) async {
    currentTheme = theme;
    getThemeMode();
    emit(ThemeChanged(themeMode: getThemeMode()));

    await CacheHelper.saveData(key: 'themeMode', value: currentTheme.name);
  }

  Future<void> _loadTheme() async {
    String? savedTheme = await CacheHelper.getData(key: 'themeMode');

    if (savedTheme != null) {
      currentTheme = ThemeModeState.values.firstWhere(
        (e) => e.name == savedTheme,
        orElse: () => ThemeModeState.system,
      );
    }

    emit(ThemeChanged(themeMode: getThemeMode()));
  }

  ThemeMode getThemeMode() {
    switch (currentTheme) {
      case ThemeModeState.dark:
        return ThemeMode.dark;
      case ThemeModeState.light:
        return ThemeMode.light;
      case ThemeModeState.system:
        return ThemeMode.system;
    }
  }
}
