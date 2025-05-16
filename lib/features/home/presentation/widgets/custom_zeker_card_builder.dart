import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_zeker_card_provider_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomZekerCardBuilder extends StatelessWidget {
  const CustomZekerCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      buildWhen: (previous, current) {
        if (current is AzkarSuccess) {
          return true;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        if (state is AzkarSuccess) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder:
                (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
            child: CustomZekerCardProviderData(
              zekerItemModel: state.zeker,
              key: ValueKey(state.index),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
