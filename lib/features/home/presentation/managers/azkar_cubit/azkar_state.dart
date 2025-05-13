part of 'azkar_cubit.dart';

abstract class AzkarState {}

final class AzkarInitial extends AzkarState {}

final class AzkarSuccess extends AzkarState {
  final int? index;
  final ZekerItem zeker;
  final int? azkarListLength;

  AzkarSuccess({
    required this.azkarListLength,
    required this.index,
    required this.zeker,
  });
}

final class AzkarError extends AzkarState {
  final String message;
  AzkarError({required this.message});
}

final class AzkarLoading extends AzkarState {}

final class AzkarFinished extends AzkarState {}
