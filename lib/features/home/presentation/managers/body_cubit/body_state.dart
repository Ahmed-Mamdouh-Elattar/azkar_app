part of 'body_cubit.dart';

@freezed
class BodyState with _$BodyState {
  @override
  final int index;
  const BodyState._({required this.index});
  const factory BodyState.home({required int index}) = Home;
  const factory BodyState.favorites({required int index}) = Favorites;
  const factory BodyState.chart({required int index}) = Chart;
}
