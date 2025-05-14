import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/favorites/presentation/cubits/favorite_cubit/favorite_cubit.dart';

import 'package:azkar_app/features/favorites/presentation/widgets/number_of_zeker.dart';
import 'package:azkar_app/features/share/presentation/widgets/share_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteAndShareButtonInFavoriteCard extends StatelessWidget {
  const FavoriteAndShareButtonInFavoriteCard({
    required this.zekerItemModel,
    required this.onDelete,
    required this.widgtScreenShot,
    super.key,
  });
  final ZekerItem zekerItemModel;

  final VoidCallback onDelete;
  final GlobalKey widgtScreenShot;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            onDelete();
            context.read<FavoriteCubit>().deleteFromFavorites(
              zekerItem: zekerItemModel,
            );
          },
          icon: const Icon(Icons.favorite, size: 34, color: Colors.red),
        ),
        const SizedBox(width: 8),
        ShareButton(
          zekerItem: zekerItemModel,
          widgetScreenShot: widgtScreenShot,
        ),
        const Spacer(),
        NumberOfZeker(zekerItemModel: zekerItemModel),
      ],
    );
  }
}
