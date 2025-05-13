import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';

import 'package:azkar_app/features/favorites/presentation/cubits/favorite_cubit/favorite_cubit.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/favorite_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteIconButtonBuilder extends StatefulWidget {
  const FavoriteIconButtonBuilder({required this.zekerItem, super.key});
  final ZekerItem zekerItem;

  @override
  State<FavoriteIconButtonBuilder> createState() =>
      _FavoriteIconButtonBuilderState();
}

class _FavoriteIconButtonBuilderState extends State<FavoriteIconButtonBuilder> {
  @override
  void initState() {
    context.read<FavoriteCubit>().intializeFavoriteButton();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return switch (state) {
          Toggle(:final newzekerItem) => FavoriteIconButton(
            isFavorite: newzekerItem.isFavorite,
            onPressed: () {
              context.read<FavoriteCubit>().toggleFavorite(
                zekerItem: newzekerItem,
              );
            },
          ),
          (_) => FavoriteIconButton(
            isFavorite: widget.zekerItem.isFavorite,
            onPressed: () {
              context.read<FavoriteCubit>().toggleFavorite(
                zekerItem: widget.zekerItem,
              );
            },
          ),
        };
      },
    );
  }
}
