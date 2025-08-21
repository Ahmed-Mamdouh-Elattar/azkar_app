import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/core/config/app_color.dart';

import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ThemeSwitchingButton extends StatelessWidget {
  const ThemeSwitchingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomSwitchButton(),
        const SizedBox(width: 10),
        SvgPicture.asset(Assets.mediaIconsMoon, height: 36, width: 36),
      ],
    );
  }
}

class CustomSwitchButton extends StatelessWidget {
  const CustomSwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        bool isDarkMode = ThemeMode.dark == state;
        return Switch(
          value: isDarkMode,
          activeThumbColor: AppColor.darkModeButtonColor,
          trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
          inactiveTrackColor: Colors.grey,
          inactiveThumbColor: Colors.white,

          onChanged: (value) {
            BlocProvider.of<ThemeCubit>(context).changeTheme(isDarkMode: value);
          },
        );
      },
    );
  }
}
