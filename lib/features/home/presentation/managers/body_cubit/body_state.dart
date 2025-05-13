part of 'body_cubit.dart';

@freezed
class BodyState with _$BodyState {
  const factory BodyState.home({required int index}) = Home;
  const factory BodyState.favorites({required int index}) = Favorites;
  const factory BodyState.chart({required int index}) = Chart;

  @override
  int get index => 0;
}
