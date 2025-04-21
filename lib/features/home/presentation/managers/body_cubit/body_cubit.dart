import 'package:flutter_bloc/flutter_bloc.dart';

part 'body_state.dart';

class BodyCubit extends Cubit<BodyState> {
  BodyCubit() : super(HomeBody());

  void changeBody(int index) {
    if (index == 0) {
      emit(HomeBody());
    } else if (index == 1) {
      emit(FavoriteBody());
    } else if (index == 2) {
      emit(ChartBody());
    }
  }
}
