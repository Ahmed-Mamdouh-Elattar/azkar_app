import 'package:azkar_app/core/config/app_color.dart';

import 'package:azkar_app/features/home/data/azkar_model.dart';
import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({required this.azkarModel, super.key});
  final AzkarModel azkarModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        bool isDarkMode = ThemeMode.dark == state;
        return AspectRatio(
          aspectRatio: 1,
          child: Card(
            color:
                isDarkMode ? const Color(0xFF3E4E40) : const Color(0xFFB0BEC5),
            elevation: 4,
            shadowColor:
                isDarkMode
                    ? AppColor.lightModeButtonColor
                    : AppColor.darkModeButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SvgPicture.asset(azkarModel.azkarIcon, height: 38, width: 38),
                  const SizedBox(height: 8),
                  Flexible(
                    child: Text(
                      azkarModel.azkarName,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color:
                            isDarkMode
                                ? AppColor.darkModeTextColor
                                : AppColor.lightModeTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
