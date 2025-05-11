import 'package:azkar_app/features/home/presentation/widgets/counter_button.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_zeker_card.dart';
import 'package:flutter/material.dart';

class AzkarViewBodyContent extends StatelessWidget {
  const AzkarViewBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, snapshot) {
        return Column(
          children: [
            SizedBox(
              height: snapshot.maxHeight * 0.75,
              child: const CustomZekerCardBuilder(),
            ),
            SizedBox(
              height: snapshot.maxHeight * 0.25,
              child: const CounterButton(),
            ),
          ],
        );
      },
    );
  }
}
