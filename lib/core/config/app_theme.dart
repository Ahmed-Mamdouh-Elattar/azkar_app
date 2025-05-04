import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.lightModeBackgroundColor,
    fontFamily: "Cairo",
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: AppTextStyle.styleBold22().copyWith(
        color: AppColor.lightModeTextColor,
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.black87),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.darkModeBackgroundColor,
    fontFamily: "Cairo",
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: AppTextStyle.styleBold22().copyWith(
        color: AppColor.darkModeTextColor,
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
  );
}
