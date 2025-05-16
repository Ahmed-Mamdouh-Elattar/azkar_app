import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/presentation/widgets/horizontal_card_divider.dart';
import 'package:azkar_app/core/presentation/widgets/zeker_text_with_text_style.dart';
import 'package:azkar_app/core/utils/provide_data/provide_data_cubit.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/favorite_and_share_button_in_favorite_card.dart';
import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomZekerFavoriteCard extends StatelessWidget {
  const CustomZekerFavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        bool isDarkMode = ThemeMode.dark == state;
        return SizeTransition(
          sizeFactor: context.read<ProvideDataCubit>().animation!,
          child: RepaintBoundary(
            key: context.read<ProvideDataCubit>().widgtScreenShot,
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
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ZekerTextWithTextStyle(),
                  HorizontalCardDivider(),
                  FavoriteAndShareButtonInFavoriteCard(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
