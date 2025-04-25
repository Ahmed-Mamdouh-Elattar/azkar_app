import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/features/theme/presentation/widgets/theme_switching_button.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          DrawerHeader(child: Image.asset(Assets.mediaImagesSplashLogo)),
          const ThemeSwitchingButton(),
        ],
      ),
    );
  }
}
