import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingStatusCubit extends Cubit<bool> {
  OnboardingStatusCubit({
    required OnboardingStatusRepository onboardingStatusRepository,
  }) : _onboardingStatusRepository = onboardingStatusRepository,
       super(false);

  final OnboardingStatusRepository _onboardingStatusRepository;
  Future<void> saveOnboardingStatus() async =>
      _onboardingStatusRepository.saveUserSawOnboarding();

  Future<void> getOnboardingStatus() async {
    final onboardingStatus =
        await _onboardingStatusRepository.getUserOnboardingStatus();
    emit(onboardingStatus);
  }
}
