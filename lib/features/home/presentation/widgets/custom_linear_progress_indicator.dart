import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDarkMode = context.isDarkMode;
        return Row(
          children: [
            SizedBox(
              width: constraints.maxWidth * 0.8,
              child: LinearProgressIndicator(
                backgroundColor:
                    isDarkMode
                        ? AppColor.darkModeButtonColor.withAlpha(50)
                        : AppColor.lightModeButtonColor.withAlpha(50),
                valueColor: AlwaysStoppedAnimation(
                  isDarkMode
                      ? AppColor.darkModeButtonColor
                      : AppColor.lightModeButtonColor,
                ),
                value: 5 / 20,
                borderRadius: BorderRadius.circular(8),
                minHeight: 12,
              ),
            ),
            SizedBox(width: constraints.maxWidth * 0.05),
            Text('5/20', style: AppTextStyle.styleMedium18()),
          ],
        );
      },
    );
  }
}
