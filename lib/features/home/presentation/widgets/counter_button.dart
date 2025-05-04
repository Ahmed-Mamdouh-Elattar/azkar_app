import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.isDarkMode;
    return MaterialButton(
      onPressed: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              value: 0,
              backgroundColor:
                  isDarkMode
                      ? AppColor.darkModeButtonColor.withAlpha(50)
                      : AppColor.lightModeButtonColor.withAlpha(50),
              valueColor: AlwaysStoppedAnimation(
                isDarkMode
                    ? AppColor.darkModeButtonColor
                    : AppColor.lightModeButtonColor,
              ),
            ),
          ),
          Text("3", style: AppTextStyle.styleBold30()),
        ],
      ),
    );
  }
}
