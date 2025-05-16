import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:flutter/material.dart';

class HorizontalCardDivider extends StatelessWidget {
  const HorizontalCardDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color:
          context.isDarkMode
              ? AppColor.darkModeButtonColor
              : AppColor.lightModeButtonColor,
      height: 25,
    );
  }
}
