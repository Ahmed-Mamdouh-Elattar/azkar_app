import 'package:azkar_app/features/onboarding%20screens/data/models/onboarding_model.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/managers/cubit/onboarding_last_view_cubit.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/widgets/onboarding_view_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingViewsBuilder extends StatelessWidget {
  const OnboardingViewsBuilder({
    required this.pageController,
    required this.onboardingViews,
    super.key,
  });

  final PageController? pageController;
  final List<OnboardingModel> onboardingViews;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingViews.length,
      onPageChanged: (index) {
        callOnboardingCubitBasedOnStateOfPageController(context, index);
      },
      itemBuilder:
          (context, index) => RepaintBoundary(
            child: OnboardingViewContent(
              onboardingModel: onboardingViews[index],
            ),
          ),
    );
  }

  void callOnboardingCubitBasedOnStateOfPageController(
    BuildContext context,
    int index,
  ) {
    index == onboardingViews.length - 1
        ? BlocProvider.of<OnboardingLastViewCubit>(context).isLastView(true)
        : BlocProvider.of<OnboardingLastViewCubit>(context).isLastView(false);
  }
}
