import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void navigateTo(String routeName) {
    Navigator.pushNamed(this, routeName);
  }

  void navigateToReplacement(String routeName) {
    Navigator.pushReplacementNamed(this, routeName);
  }

  void navigateToAndRemoveUntil(String routeName) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }

  void pop() => Navigator.pop(this);
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
