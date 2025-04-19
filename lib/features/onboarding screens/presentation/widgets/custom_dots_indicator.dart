import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    required this.pageController,

    required this.onboardingViewsLength,
    super.key,
  });

  final PageController? pageController;
  final int onboardingViewsLength;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController!, // PageController
      count: onboardingViewsLength,
      effect: JumpingDotEffect(
        activeDotColor:
            context.isDarkMode
                ? const Color(0xffA5D6A7)
                : const Color(0xff2E7D32),
        verticalOffset: 15,
        jumpScale: 1.5,
        dotColor:
            context.isDarkMode
                ? const Color(0xff375F68)
                : const Color(0xffA5D6A7),
      ),
      // your preferred effect
      onDotClicked: (index) {
        pageController!.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
    );
  }
}
