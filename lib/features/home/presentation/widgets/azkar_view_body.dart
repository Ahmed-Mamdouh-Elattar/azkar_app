import 'package:azkar_app/core/helper/constants.dart';

import 'package:azkar_app/features/home/presentation/widgets/counter_button.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_linear_progress_indicator.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_zeker_card.dart';
import 'package:flutter/material.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(kViewPadding),
      child: Column(
        children: [
          CustomLinearProgressIndicator(),
          Spacer(),
          CustomZekerCard(),

          Spacer(),
          CounterButton(),
          Spacer(),
        ],
      ),
    );
  }
}
