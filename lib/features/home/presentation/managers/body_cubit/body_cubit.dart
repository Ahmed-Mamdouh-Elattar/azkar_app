import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_state.dart';
part 'body_cubit.freezed.dart';

class BodyCubit extends Cubit<BodyState> {
  BodyCubit() : super(const BodyState.home(index: 0));

  void changeBody({required int index}) {
    switch (index) {
      case 0:
        emit(BodyState.home(index: index));
        break;
      case 1:
        emit(BodyState.favorites(index: index));
        break;
      case 2:
        emit(BodyState.chart(index: index));
        break;
    }
  }
}
