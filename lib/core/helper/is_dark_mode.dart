import 'package:flutter/material.dart';

extension DarkModeExtension on BuildContext {
  bool get isDarkMode {
    return MediaQuery.of(this).platformBrightness == Brightness.dark;
  }
}
