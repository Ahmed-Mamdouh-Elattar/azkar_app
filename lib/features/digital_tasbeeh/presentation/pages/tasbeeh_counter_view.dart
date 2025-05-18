import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/features/digital_tasbeeh/data/tasbeeh_model.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/managers/cubit/tasbeeh_cubit.dart';
import 'package:flutter/material.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/tasbeeh_counter_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasbeehCounterView extends StatelessWidget {
  const TasbeehCounterView({required this.tasbeehModel, super.key});
  final TasbeehModel tasbeehModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasbeehCubit(tasbeehModel: tasbeehModel)..init(),
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(kViewPadding),
            child: TasbeehCounterViewBody(),
          ),
        ),
      ),
    );
  }
}
