import 'package:flutter/material.dart';

abstract class AppState {}

final class AppInitialState extends AppState {}

final class LanguageArabicState extends AppState {}

final class LanguageEnglishState extends AppState {}

class ThemeChanged extends AppState {
  final ThemeMode themeMode;
  ThemeChanged({required this.themeMode});
}
