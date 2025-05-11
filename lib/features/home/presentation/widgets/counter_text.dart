import 'package:azkar_app/features/home/presentation/managers/zeker_counter/zeker_counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ZekerCounterCubit, ZekerCounterState>(
      builder: (context, state) {
        return Text("${state.zekerCounterTotal}/${state.zekerCounter}");
      },
    );
  }
}
