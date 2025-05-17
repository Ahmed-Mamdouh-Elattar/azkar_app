import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/features/digital_tasbeeh/data/tasbeeh_model.dart';
import 'package:flutter/material.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/tasbeeh_counter_view_body.dart';

class TasbeehCounterView extends StatelessWidget {
  const TasbeehCounterView({required this.tasbeehModel, super.key});
  final TasbeehModel tasbeehModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kViewPadding),
          child: TasbeehCounterViewBody(tasbeehModel: tasbeehModel),
        ),
      ),
    );
  }
}
