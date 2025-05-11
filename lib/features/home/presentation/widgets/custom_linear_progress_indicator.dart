import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDarkMode = context.isDarkMode;
        return BlocBuilder<AzkarCubit, AzkarState>(
          buildWhen: (previous, current) {
            if (current is AzkarSuccess || current is AzkarFinished) {
              return true;
            } else {
              return false;
            }
          },
          builder: (context, state) {
            final int index = context.read<AzkarCubit>().zekerIndex;
            final int length = context.read<AzkarCubit>().azkarList.length;

            return Row(
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.8,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (child, animation) =>
                            FadeTransition(opacity: animation, child: child),
                    child: LinearProgressIndicator(
                      key: ValueKey(index),
                      backgroundColor:
                          isDarkMode
                              ? AppColor.darkModeButtonColor.withAlpha(50)
                              : AppColor.lightModeButtonColor.withAlpha(50),
                      valueColor: AlwaysStoppedAnimation(
                        isDarkMode
                            ? AppColor.darkModeButtonColor
                            : AppColor.lightModeButtonColor,
                      ),
                      value: index / length,
                      borderRadius: BorderRadius.circular(8),
                      minHeight: 10,
                    ),
                  ),
                ),
                SizedBox(width: constraints.maxWidth * 0.05),
                SizedBox(
                  width: constraints.maxWidth * 0.15,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '$index/$length',
                      style: AppTextStyle.styleMedium18(),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
