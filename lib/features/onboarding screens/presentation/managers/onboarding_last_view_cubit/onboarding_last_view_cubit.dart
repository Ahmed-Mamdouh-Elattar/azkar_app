import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingLastViewCubit extends Cubit<bool> {
  OnboardingLastViewCubit() : super(false);
  void isLastView(bool isLastView) => emit(isLastView);
}
