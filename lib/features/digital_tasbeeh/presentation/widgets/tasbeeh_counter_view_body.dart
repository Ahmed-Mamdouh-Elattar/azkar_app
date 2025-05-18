import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/presentation/widgets/celebration_widget.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/managers/cubit/tasbeeh_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_counter_button.dart';
import 'vibration_and_reset_icon_button.dart';

class TasbeehCounterViewBody extends StatelessWidget {
  const TasbeehCounterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: switch (state) {
            Finished() => const CelebrationWidget(),
            _ => Column(
              children: [
                Text(
                  context.read<TasbeehCubit>().tasbeehModel.zekr,
                  style: AppTextStyle.styleBold30(),
                ),
                const SizedBox(height: 16),
                const Expanded(child: CustomCounterButton()),
                const VibrationAndResetIconButton(),
              ],
            ),
          },
        );
      },
    );
  }
}
