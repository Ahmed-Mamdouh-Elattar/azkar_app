import 'package:azkar_app/features/digital_tasbeeh/presentation/managers/cubit/tasbeeh_cubit.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/vibration_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VibrationAndResetIconButton extends StatelessWidget {
  const VibrationAndResetIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const VibrationButton(),
        IconButton(
          onPressed: () {
            context.read<TasbeehCubit>().reset();
          },
          icon: const Icon(Icons.restart_alt, size: 36),
        ),
      ],
    );
  }
}
