import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/favorite_and_share_button.dart';
import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomZekerFavoriteCard extends StatelessWidget {
  const CustomZekerFavoriteCard({
    required this.zekerItemModel,
    required this.animation,
    required this.onDelete,
    super.key,
  });
  final ZekerItem zekerItemModel;

  final Animation<double> animation;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        bool isDarkMode = ThemeMode.dark == state;
        return SizeTransition(
          sizeFactor: animation,
          child: Container(
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:
                    isDarkMode
                        ? AppColor.darkModeButtonColor
                        : AppColor.lightModeButtonColor,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  style: AppTextStyle.styleMedium20().copyWith(
                    fontFamily: "Lateef",
                    color:
                        isDarkMode ? AppColor.darkModeTextColor : Colors.black,
                  ),
                  zekerItemModel.zekr,
                ),
                Divider(
                  color:
                      isDarkMode
                          ? AppColor.darkModeButtonColor
                          : AppColor.lightModeButtonColor,
                  height: 25,
                ),
                FavoriteAndShareButton(
                  onDelete: onDelete,
                  zekerItemModel: zekerItemModel,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
