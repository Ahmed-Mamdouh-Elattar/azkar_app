import 'dart:math';

import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/pick_ecouragement_sentence.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CelebrationWidget extends StatefulWidget {
  const CelebrationWidget({super.key});

  @override
  State<CelebrationWidget> createState() => _CelebrationWidgetState();
}

class _CelebrationWidgetState extends State<CelebrationWidget> {
  late ConfettiController confettiController;
  @override
  void initState() {
    confettiController = ConfettiController(
      duration: const Duration(seconds: 4),
    );
    confettiController.play();
    super.initState();
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConfettiWidget(
        confettiController: confettiController,
        gravity: 0,
        blastDirectionality: BlastDirectionality.explosive,

        blastDirection: -pi / 2,
        emissionFrequency: 0.2,

        displayTarget: true,
        child: const CelebrationWidgetContent(),
      ),
    );
  }
}

class CelebrationWidgetContent extends StatelessWidget {
  const CelebrationWidgetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LottieBuilder.asset(Assets.mediaAnimationsFlowerHeart, repeat: false),
        const SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          pickEcouragementSentence(),
          style: AppTextStyle.styleBold22(),
        ),
      ],
    );
  }
}
