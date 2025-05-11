part of 'zeker_counter_cubit.dart';

sealed class ZekerCounterState {
  final int zekerCounter;
  final int zekerCounterTotal;

  ZekerCounterState({
    required this.zekerCounter,
    required this.zekerCounterTotal,
  });
}

final class ZekerCounterInitial extends ZekerCounterState {
  ZekerCounterInitial({
    required super.zekerCounter,
    required super.zekerCounterTotal,
  });
}

final class ZekerCounterChanged extends ZekerCounterState {
  ZekerCounterChanged({
    required super.zekerCounter,
    required super.zekerCounterTotal,
  });
}

final class ZekerCounterFinished extends ZekerCounterState {
  ZekerCounterFinished({super.zekerCounter = 0, super.zekerCounterTotal = 0});
}
