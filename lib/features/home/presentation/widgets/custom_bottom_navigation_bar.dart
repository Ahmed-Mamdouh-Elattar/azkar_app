import 'package:azkar_app/core/config/app_color.dart';

import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/features/favorites/presentation/cubits/favorite_cubit/favorite_cubit.dart';
import 'package:azkar_app/features/home/presentation/managers/body_cubit/body_cubit.dart';
import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        bool isDarkMode = ThemeMode.dark == state;
        return BlocBuilder<BodyCubit, BodyState>(
          builder: (context, state) {
            return StylishBottomBar(
              currentIndex: state.index,

              onTap: (index) async {
                BlocProvider.of<BodyCubit>(context).changeBody(index: index);
                getAzkarFavorites(index, context);
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              hasNotch: true,

              items: [
                BottomBarItem(
                  unSelectedColor: buildUnSelectedColor(isDarkMode),
                  icon: const Icon(Icons.home),
                  backgroundColor: buildBackgroundAndBorderColor(isDarkMode),
                  borderColor: buildBackgroundAndBorderColor(isDarkMode),
                  title: buildBoldText(S.of(context).home),
                ),
                BottomBarItem(
                  unSelectedColor: buildUnSelectedColor(isDarkMode),
                  icon: const Icon(Icons.favorite),
                  backgroundColor: buildBackgroundAndBorderColor(isDarkMode),
                  borderColor: buildBackgroundAndBorderColor(isDarkMode),
                  title: buildBoldText(S.of(context).favorite),
                ),
              ],
              option: BubbleBarOptions(
                barStyle: BubbleBarStyle.vertical,
                bubbleFillStyle: BubbleFillStyle.outlined,
              ),
            );
          },
        );
      },
    );
  }

  void getAzkarFavorites(int index, BuildContext context) {
    if (index == 1) {
      context.read<FavoriteCubit>().getZekerFavorites();
    }
  }

  Color buildUnSelectedColor(bool isDarkMode) {
    return isDarkMode ? const Color(0xff4F5B62) : const Color(0xffA5D6A7);
  }

  Color buildBackgroundAndBorderColor(bool isDarkMode) {
    return isDarkMode
        ? AppColor.darkModeButtonColor
        : AppColor.lightModeButtonColor;
  }

  Text buildBoldText(String text) {
    return Text(text, style: const TextStyle(fontWeight: FontWeight.bold));
  }
}
