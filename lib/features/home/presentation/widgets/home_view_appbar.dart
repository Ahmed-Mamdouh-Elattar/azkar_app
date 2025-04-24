import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({required this.scaffoldKey, super.key});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        S.of(context).appName,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color:
              context.isDarkMode
                  ? AppColor.darkModeTextColor
                  : AppColor.lightModeTextColor,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: context.isDarkMode ? Colors.white : Colors.black87,
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
