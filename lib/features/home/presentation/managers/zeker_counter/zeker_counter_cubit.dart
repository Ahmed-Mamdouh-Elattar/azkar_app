import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'zeker_counter_state.dart';

class ZekerCounterCubit extends Cubit<ZekerCounterState> {
  ZekerCounterCubit({required int zekerCounterTotal})
    : _zekerCounterTotal = zekerCounterTotal,
      super(
        ZekerCounterInitial(
          zekerCounterTotal: zekerCounterTotal,
          zekerCounter: 0,
        ),
      );
  int _zekerCounterTotal;
  int _zekerCounter = 0;

  void resetZekerCounter(int zekerCounter) {
    _zekerCounterTotal = zekerCounter;
    _zekerCounter = 0;
    log("_zekerCounterTotal: $_zekerCounterTotal");
    emit(
      ZekerCounterInitial(
        zekerCounterTotal: _zekerCounterTotal,
        zekerCounter: _zekerCounter,
      ),
    );
  }

  void changeZekerCounter() async {
    _zekerCounter = _zekerCounter + 1;
    if (_zekerCounter != _zekerCounterTotal) {
      emit(
        ZekerCounterChanged(
          zekerCounter: _zekerCounter,
          zekerCounterTotal: _zekerCounterTotal,
        ),
      );
    } else {
      emit(
        ZekerCounterFinished(
          zekerCounter: _zekerCounter,
          zekerCounterTotal: _zekerCounterTotal,
        ),
      );
    }
  }
}
