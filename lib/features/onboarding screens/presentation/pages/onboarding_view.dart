import 'package:azkar_app/features/onboarding%20screens/presentation/managers/onboarding_last_view_cubit/onboarding_last_view_cubit.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardingLastViewCubit(),
        child: const SafeArea(child: OnboardingViewBody()),
      ),
    );
  }
}
