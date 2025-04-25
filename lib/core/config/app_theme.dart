import 'package:azkar_app/core/config/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.lightModeBackgroundColor,
    fontFamily: "Cairo",
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.darkModeBackgroundColor,
    fontFamily: "Cairo",
  );
}
