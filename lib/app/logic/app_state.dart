import 'package:flutter/material.dart';

abstract class AppState {}

final class AppInitialState extends AppState {}

final class LanguageChangedState extends AppState {
  final String language;

  LanguageChangedState({required this.language});
}

class ThemeChangedState extends AppState {
  final ThemeMode themeMode;

  ThemeChangedState({required this.themeMode});
}
