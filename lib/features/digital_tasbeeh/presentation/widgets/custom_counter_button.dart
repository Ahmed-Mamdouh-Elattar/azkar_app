import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/managers/cubit/tasbeeh_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCounterButton extends StatelessWidget {
  const CustomCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      buildWhen: (previous, current) => previous.counter != current.counter,
      builder: (context, state) {
        return Center(
          child: IconButton(
            onPressed: () {
              context.read<TasbeehCubit>().increment();
            },
            icon: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    child: CircularProgressIndicator(
                      value:
                          state.counter /
                          context.read<TasbeehCubit>().tasbeehModel.zekrRepeat,
                      constraints: const BoxConstraints.expand(),
                      valueColor: AlwaysStoppedAnimation(
                        context.isDarkMode
                            ? AppColor.darkModeButtonColor
                            : AppColor.lightModeButtonColor,
                      ),
                      backgroundColor:
                          context.isDarkMode
                              ? AppColor.darkModeButtonColor.withAlpha(50)
                              : AppColor.lightModeButtonColor.withAlpha(50),
                      strokeWidth: 10,
                    ),
                  ),
                  Text(
                    state.counter.toString(),
                    style: AppTextStyle.styleBold30().copyWith(fontSize: 60),
                  ), // Made counter text larger
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
