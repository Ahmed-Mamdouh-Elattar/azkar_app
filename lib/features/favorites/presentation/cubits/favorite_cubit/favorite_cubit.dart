import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/core/utils/result/result.dart';
import 'package:azkar_app/features/favorites/data/repositories/favorites_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this._favoritesRepository)
    : super(const FavoriteState.initial());

  final FavoritesRepository _favoritesRepository;

  void getZekerFavorites() {
    emit(const FavoriteState.loading());
    final result = _favoritesRepository.getFavorites();

    switch (result) {
      case ResultSuccess(:final data):
        data.isEmpty
            ? emit(const FavoriteState.empty())
            : emit(FavoriteState.success(zekerFavorites: data));
        break;
      case ResultFailure(:final message):
        emit(FavoriteState.failure(message: message));
        break;
    }
  }

  void toggleFavorite({required ZekerItem zekerItem}) {
    late ZekerItem newZekerItem;
    switch (zekerItem.isFavorite) {
      case true:
        newZekerItem = _favoritesRepository.deleteFromFavorites(zekerItem);
        emit(FavoriteState.toggle(newzekerItem: newZekerItem));
        break;
      case false:
        newZekerItem = _favoritesRepository.addToFavorites(zekerItem);
        emit(FavoriteState.toggle(newzekerItem: newZekerItem));
        break;
    }
  }

  void deleteFromFavorites({required ZekerItem zekerItem}) {
    _favoritesRepository.deleteFromFavorites(zekerItem);
  }

  void intializeFavoriteButton() {
    emit(const FavoriteState.initial());
  }
}
