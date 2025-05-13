import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/presentation/widgets/custom_center_text.dart';

import 'package:azkar_app/features/favorites/presentation/cubits/favorite_cubit/favorite_cubit.dart';

import 'package:azkar_app/features/favorites/presentation/widgets/favorite_body_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(kViewPadding),
      child: FavoritesBodyBuilder(),
    );
  }
}

class FavoritesBodyBuilder extends StatelessWidget {
  const FavoritesBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return switch (state) {
          Success(:final zekerFavorites) => FavoriteBodyContent(
            zekerFavorites: zekerFavorites,
          ),
          Empty() => const CustomCenterText(text: "لا يوجد أذكار في المفضلة"),
          Loading() => const Center(child: CircularProgressIndicator()),
          (_) => const CustomCenterText(text: "حدث خطأ حاول مرة أخرى"),
        };
      },
    );
  }
}
