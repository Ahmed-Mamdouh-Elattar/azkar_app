import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/core/utils/result/result.dart';

import 'package:azkar_app/features/favorites/data/sources/favorites_local_storage.dart';

class FavoritesRepository {
  final FavoritesLocalStorage _localStorage;

  FavoritesRepository(this._localStorage);

  Result<List<ZekerItem>> getFavorites() {
    try {
      List<ZekerItem> zekerFavorites = _localStorage.getFavorites();
      return Result.success(zekerFavorites);
    } catch (e) {
      return const Result.failure("فشل الحصول على الاذكار المفضلة");
    }
  }

  ZekerItem addToFavorites(ZekerItem zekerItem) {
    return _localStorage.addToFavorites(zekerItem);
  }

  ZekerItem deleteFromFavorites(ZekerItem zekerItem) {
    return _localStorage.deleteFromFavorites(zekerItem);
  }
}
