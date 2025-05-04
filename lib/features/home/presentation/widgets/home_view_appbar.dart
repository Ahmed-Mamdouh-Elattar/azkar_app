import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({required this.scaffoldKey, super.key});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(S.of(context).appName),
      leading: IconButton(
        icon: const Icon(Icons.menu),

        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
