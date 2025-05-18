import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/managers/cubit/tasbeeh_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VibrationButton extends StatelessWidget {
  const VibrationButton({super.key});

  @override
  Widget build(BuildContext context) {
    Color color =
        context.isDarkMode
            ? AppColor.darkModeButtonColor
            : AppColor.lightModeButtonColor;
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      buildWhen:
          (previous, current) =>
              previous.isVibrationMode != current.isVibrationMode,
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            context.read<TasbeehCubit>().setVibrationMode();
          },
          icon: Icon(
            Icons.vibration,
            size: 36,
            color: state.isVibrationMode ? color : null,
          ),
        );
      },
    );
  }
}
