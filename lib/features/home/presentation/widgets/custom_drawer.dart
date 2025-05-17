import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/core/utils/app_navigation.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/pages/tasbeeh_form_view.dart';
import 'package:azkar_app/features/theme/presentation/widgets/theme_switching_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          const SizedBox(height: 10),
          ListTile(
            trailing: SvgPicture.asset(
              Assets.mediaIconsTasbeeh,
              height: 32,
              width: 32,
            ),
            title: Text(
              S.of(context).digitalTasbeeh,
              textAlign: TextAlign.center,
              style: AppTextStyle.styleMedium18(),
            ),
            onTap: () {
              AppNavigation.pushWithSlidingAnimation(
                context: context,
                view: const TasbeehFormView(),
              );
            },
          ),
        ],
      ),
    );
  }
}
