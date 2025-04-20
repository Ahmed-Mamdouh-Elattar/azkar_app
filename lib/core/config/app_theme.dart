import 'package:azkar_app/core/config/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.lightModeBackgroundColor,
    fontFamily: "Cairo",
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.darkModeBackgroundColor,
    fontFamily: "Cairo",
  );
}
