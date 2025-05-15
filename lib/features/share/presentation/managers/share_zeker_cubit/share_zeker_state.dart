part of 'share_zeker_cubit.dart';

@freezed
class ShareZekerState with _$ShareZekerState {
  const factory ShareZekerState.initial() = Initial;

  const factory ShareZekerState.success({required String message}) = Success;
  const factory ShareZekerState.failure({required String message}) = Failure;
}
