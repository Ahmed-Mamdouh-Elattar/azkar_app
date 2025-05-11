import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_state.freezed.dart';

@Freezed()
sealed class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.failure({required String message}) = _Failure;
  const factory FavoriteState.success({
    required List<ZekerItem> zekerFavorites,
  }) = _Success;
  const factory FavoriteState.empty() = _Empty;
  const factory FavoriteState.toggle({required bool isFavorite}) = _Toggle;
}
