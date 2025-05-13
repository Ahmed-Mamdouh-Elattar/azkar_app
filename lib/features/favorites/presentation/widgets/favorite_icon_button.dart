import 'package:flutter/material.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({
    this.onPressed,
    super.key,
    this.isFavorite = false,
  });

  final void Function()? onPressed;
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon:
          isFavorite
              ? const Icon(Icons.favorite, size: 34, color: Colors.red)
              : const Icon(Icons.favorite_border, size: 34),
    );
  }
}
