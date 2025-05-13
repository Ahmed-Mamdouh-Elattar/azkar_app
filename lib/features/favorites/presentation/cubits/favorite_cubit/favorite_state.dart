part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = Initial;
  const factory FavoriteState.loading() = Loading;
  const factory FavoriteState.failure({required String message}) = Failure;
  const factory FavoriteState.success({
    required List<ZekerItem> zekerFavorites,
    String? updateStateKey,
  }) = Success;
  const factory FavoriteState.empty() = Empty;
  const factory FavoriteState.toggle({required ZekerItem newzekerItem}) =
      Toggle;
}
