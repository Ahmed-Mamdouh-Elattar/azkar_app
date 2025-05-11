import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/features/home/presentation/managers/zeker_counter/zeker_counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.isDarkMode;
    return BlocConsumer<ZekerCounterCubit, ZekerCounterState>(
      listener: (context, state) async {
        await loadNextZekerAndInializeCounter(state, context);
      },
      builder: (context, state) {
        return buildZekerCounter(isDarkMode, state, context);
      },
    );
  }

  Widget buildZekerCounter(
    bool isDarkMode,
    ZekerCounterState state,
    BuildContext context,
  ) {
    return Center(
      child: IconButton(
        onPressed: () {
          context.read<ZekerCounterCubit>().changeZekerCounter();
        },
        icon: SizedBox(
          width: 90,
          height: 90,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                child: CircularProgressIndicator(
                  constraints: const BoxConstraints.expand(),
                  value: state.zekerCounter / state.zekerCounterTotal,
                  backgroundColor:
                      isDarkMode
                          ? AppColor.darkModeButtonColor.withAlpha(50)
                          : AppColor.lightModeButtonColor.withAlpha(50),
                  valueColor: AlwaysStoppedAnimation(
                    isDarkMode
                        ? AppColor.darkModeButtonColor
                        : AppColor.lightModeButtonColor,
                  ),
                ),
              ),
              Text(
                state.zekerCounter.toString(),
                style: AppTextStyle.styleBold30(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadNextZekerAndInializeCounter(
    ZekerCounterState state,
    BuildContext context,
  ) async {
    if (state is ZekerCounterFinished) {
      await context.read<AzkarCubit>().loadNextZeker();
      if (context.mounted) {
        context.read<ZekerCounterCubit>().resetZekerCounter(
          BlocProvider.of<AzkarCubit>(context).zekerRepeat,
        );
      }
    }
  }
}
