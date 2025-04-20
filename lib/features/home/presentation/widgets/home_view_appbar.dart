import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({super.key});

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
          color: context.isDarkMode ? Colors.white : Colors.black87,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          color: context.isDarkMode ? Colors.white : Colors.black87,
          onPressed: () {
            // Navigate to settings screen
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
