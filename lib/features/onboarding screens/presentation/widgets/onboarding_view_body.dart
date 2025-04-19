import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/features/onboarding%20screens/data/models/onboarding_model.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/managers/cubit/onboarding_last_view_cubit.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/widgets/custom_dots_indicator.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/widgets/custom_text_button.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/widgets/onboarding_views_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();

    pageController!.dispose();
  }

  final List<OnboardingModel> onboardingViews = [
    OnboardingModel(
      image: Assets.mediaAnimationsWelcome,
      title: S.current.onboarding1Title,
      description: S.current.onboarding1Description,
    ),
    OnboardingModel(
      image: Assets.mediaAnimationsBell,
      title: S.current.onboarding2Title,
      description: S.current.onboarding2Description,
    ),
    OnboardingModel(
      image: Assets.mediaAnimationsSerenity,
      title: S.current.onboarding3Title,
      description: S.current.onboarding3Description,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kViewPadding),
      child: Column(
        children: [
          Align(alignment: Alignment.bottomRight, child: buildSkipButton()),

          Expanded(
            flex: 5,
            child: OnboardingViewsBuilder(
              pageController: pageController,
              onboardingViews: onboardingViews,
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomDotsIndicator(
              pageController: pageController,
              onboardingViewsLength: onboardingViews.length,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: buildNavigationButton(),
          ),
        ],
      ),
    );
  }

  BlocBuilder<OnboardingLastViewCubit, bool> buildSkipButton() {
    return BlocBuilder<OnboardingLastViewCubit, bool>(
      builder: (context, state) {
        return state
            ? const SizedBox(height: 50)
            : SizedBox(
              height: 50,
              child: CustomTextButton(
                text: S.of(context).skip,
                onPressed:
                    () => pageController!.animateToPage(
                      onboardingViews.length - 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    ),
                textColor:
                    context.isDarkMode
                        ? const Color(0xff81C784)
                        : const Color(0xff2E7D32),
              ),
            );
      },
    );
  }

  BlocBuilder<OnboardingLastViewCubit, bool> buildNavigationButton() {
    return BlocBuilder<OnboardingLastViewCubit, bool>(
      builder: (context, state) {
        return CustomTextButton(
          textColor:
              context.isDarkMode
                  ? const Color(0xff0D1B2A)
                  : const Color(0xffFFFFFF),
          text: state ? S.of(context).start : S.of(context).next,
          style: ButtonStyle(
            backgroundColor:
                context.isDarkMode
                    ? const WidgetStatePropertyAll(Color(0xff81C784))
                    : const WidgetStatePropertyAll(Color(0xff2E7D32)),
          ),
          onPressed: () {
            pageController!.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        );
      },
    );
  }
}
