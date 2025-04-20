import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingStatusCubit extends Cubit<bool> {
  OnboardingStatusCubit(this.onboardingStatusRepository) : super(false);

  final OnboardingStatusRepository onboardingStatusRepository;
  Future<void> saveOnboardingStatus() async =>
      onboardingStatusRepository.saveUserSawOnboarding();

  Future<void> getOnboardingStatus() async {
    final onboardingStatus =
        await onboardingStatusRepository.getUserOnboardingStatus();
    emit(onboardingStatus);
  }
}
