import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(Assets.mediaAnimationsWelcome, fit: BoxFit.fill),
          const SizedBox(height: 8),
          Text(
            S.of(context).onboarding1Title,
            style: TextStyle(
              fontSize: 22,
              color:
                  context.isDarkMode
                      ? const Color(0xffE8F5E9)
                      : const Color(0xff2E7D32),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).onboarding1Description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color:
                  context.isDarkMode
                      ? const Color(0xffE8F5E9)
                      : const Color(0xff2E7D32),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
