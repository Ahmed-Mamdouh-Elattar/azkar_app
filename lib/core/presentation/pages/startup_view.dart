import 'package:azkar_app/features/home/presentation/pages/home_view.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/managers/onboarding_status_cubit/onboarding_status_cubit.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/pages/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingStatusCubit, bool>(
      builder: (context, state) {
        return state ? const HomeView() : const OnboardingView();
      },
    );
  }
}
