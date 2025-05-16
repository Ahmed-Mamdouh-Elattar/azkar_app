import 'package:azkar_app/features/favorites/presentation/cubits/favorite_cubit/favorite_cubit.dart';
import 'package:azkar_app/core/utils/provide_data/provide_data_cubit.dart';

import 'package:azkar_app/features/favorites/presentation/widgets/number_of_zeker.dart';
import 'package:azkar_app/features/share/presentation/widgets/share_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteAndShareButtonInFavoriteCard extends StatelessWidget {
  const FavoriteAndShareButtonInFavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            context.read<ProvideDataCubit>().onDeleteFavoriteZeker();
            context.read<FavoriteCubit>().deleteFromFavorites(
              zekerItem: context.read<ProvideDataCubit>().zekerItemModel,
            );
          },
          icon: const Icon(Icons.favorite, size: 34, color: Colors.red),
        ),
        const SizedBox(width: 8),
        const ShareButton(),
        const Spacer(),
        NumberOfZeker(
          zekerItemModel: context.read<ProvideDataCubit>().zekerItemModel,
        ),
      ],
    );
  }
}
