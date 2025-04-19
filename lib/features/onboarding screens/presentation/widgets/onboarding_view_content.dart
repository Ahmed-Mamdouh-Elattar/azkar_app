import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/onboarding%20screens/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingViewContent extends StatelessWidget {
  const OnboardingViewContent({required this.onboardingModel, super.key});

  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(child: Lottie.asset(onboardingModel.image, fit: BoxFit.fill)),
        const SizedBox(height: 8),
        Text(
          onboardingModel.title,
          style: TextStyle(
            fontSize: 22,
            color:
                context.isDarkMode
                    ? const Color(0xffE8F5E9)
                    : const Color(0xff1B5E20),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          onboardingModel.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color:
                context.isDarkMode
                    ? const Color(0xffE8F5E9)
                    : const Color(0xff1B5E20),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
