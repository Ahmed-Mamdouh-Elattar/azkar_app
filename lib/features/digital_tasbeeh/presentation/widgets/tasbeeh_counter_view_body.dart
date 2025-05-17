import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/digital_tasbeeh/data/tasbeeh_model.dart';
import 'package:flutter/material.dart';

class TasbeehCounterViewBody extends StatelessWidget {
  const TasbeehCounterViewBody({required this.tasbeehModel, super.key});
  final TasbeehModel tasbeehModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tasbeehModel.zekr, style: AppTextStyle.styleBold30()),
        const SizedBox(height: 16),
        Expanded(
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      child: CircularProgressIndicator(
                        constraints: const BoxConstraints.expand(),

                        valueColor: AlwaysStoppedAnimation(
                          context.isDarkMode
                              ? AppColor.darkModeButtonColor
                              : AppColor.lightModeButtonColor,
                        ),
                        backgroundColor:
                            context.isDarkMode
                                ? AppColor.darkModeButtonColor.withAlpha(50)
                                : AppColor.lightModeButtonColor.withAlpha(50),

                        strokeWidth: 10,
                      ),
                    ),
                    Text(
                      '0',
                      style: AppTextStyle.styleBold30().copyWith(fontSize: 60),
                    ), // Made counter text larger
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.vibration, size: 36),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.restart_alt, size: 36),
            ),
          ],
        ),
      ],
    );
  }
}
