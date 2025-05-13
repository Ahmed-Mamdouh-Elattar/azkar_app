import 'package:azkar_app/core/presentation/widgets/custom_center_text.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/favorites_body_builder.dart';
import 'package:azkar_app/features/home/presentation/managers/body_cubit/body_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBodyBuilder extends StatelessWidget {
  const HomeViewBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyCubit, BodyState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),

          child: switch (state) {
            Home() => const HomeViewBody(),
            Favorites() => const FavoritesBody(),
            Chart() => const CustomCenterText(
              text: "قريبا سيتم إضافة هذه الصفحة",
            ),
            (_) => const CustomCenterText(text: "حدث خطأ حاول مرة أخرى"),
          },
        );
      },
    );
  }
}
