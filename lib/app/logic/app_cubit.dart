import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/app/logic/app_state.dart';
import 'package:mentorea_mobile_app/core/cache/shared_pref_helper.dart';

enum ThemeModeState { light, dark, system }

enum LanguageState { arabic, english }

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState()) {
    _loadTheme();
    _loadLanguage();
  }

  static AppCubit get(context) => BlocProvider.of(context);

  ThemeModeState currentTheme = ThemeModeState.system;
  LanguageState currentLanguage = LanguageState.arabic;

  Future<void> selectTheme(ThemeModeState theme) async {
    currentTheme = theme;
    getThemeMode();
    emit(ThemeChangedState(themeMode: getThemeMode()));

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

    emit(ThemeChangedState(themeMode: getThemeMode()));
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

  Future<void> selectLanguage(LanguageState language) async {
    currentLanguage = language;

    getCurrentLanguage();

    emit(LanguageChangedState(language: getCurrentLanguage()));

    await CacheHelper.saveData(key: 'language', value: currentLanguage.name);
  }

  Future<void> _loadLanguage() async {
    String? savedLanguage = await CacheHelper.getData(key: 'language');

    if (savedLanguage != null) {
      currentLanguage = LanguageState.values.firstWhere(
        (e) => e.name == savedLanguage,
        orElse: () => LanguageState.arabic,
      );
    }

    emit(LanguageChangedState(language: getCurrentLanguage()));
  }

  String getCurrentLanguage() {
    switch (currentLanguage) {
      case LanguageState.arabic:
        return 'ar';
      case LanguageState.english:
        return 'en';
    }
  }
}
