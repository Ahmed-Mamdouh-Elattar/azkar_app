part of 'tasbeeh_cubit.dart';

@freezed
class TasbeehState with _$TasbeehState {
  @override
  final int counter = 0;
  @override
  final bool isVibrationMode = false;
  const TasbeehState._();
  const factory TasbeehState.initial({
    required int counter,
    @Default(false) bool isVibrationMode,
  }) = Initial;
  const factory TasbeehState.increment({
    required int counter,
    @Default(false) bool isVibrationMode,
  }) = Increment;

  const factory TasbeehState.reset({
    required int counter,
    @Default(false) bool isVibrationMode,
  }) = Reset;
  const factory TasbeehState.finished() = Finished;
}
