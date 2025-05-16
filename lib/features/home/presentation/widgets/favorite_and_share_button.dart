import 'package:azkar_app/features/favorites/presentation/widgets/favorite_icon_button_builder.dart';
import 'package:azkar_app/features/home/presentation/widgets/counter_text.dart';
import 'package:azkar_app/features/share/presentation/widgets/share_button.dart';
import 'package:flutter/material.dart';

class FavoriteAndShareButton extends StatelessWidget {
  const FavoriteAndShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        FavoriteIconButtonBuilder(),
        SizedBox(width: 8),
        ShareButton(),
        Spacer(),
        CounterText(),
      ],
    );
  }
}
