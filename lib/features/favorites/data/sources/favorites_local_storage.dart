import 'package:azkar_app/core/models/azkar_model/objectbox.g.dart';
import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/core/services/objectbox_service.dart';

abstract class FavoritesLocalStorage {
  ZekerItem addToFavorites(ZekerItem zekerItem);
  ZekerItem deleteFromFavorites(ZekerItem zekerItem);
  List<ZekerItem> getFavorites();
}

class FavoritesLocalStorageImpl implements FavoritesLocalStorage {
  @override
  ZekerItem addToFavorites(ZekerItem zekerItem) {
    final box = ObjectBoxService().zekerItemBox;
    final zekerItemFromBox = box.get(zekerItem.id);

    zekerItemFromBox!.isFavorite = true;
    box.put(zekerItemFromBox);

    return zekerItemFromBox;
  }

  @override
  ZekerItem deleteFromFavorites(ZekerItem zekerItem) {
    final box = ObjectBoxService().zekerItemBox;
    final zekerItemFromBox = box.get(zekerItem.id);

    zekerItemFromBox!.isFavorite = false;
    box.put(zekerItemFromBox);

    return zekerItemFromBox;
  }

  @override
  List<ZekerItem> getFavorites() {
    final box = ObjectBoxService().zekerItemBox;
    final query = box.query(ZekerItem_.isFavorite.equals(true)).build();
    List<ZekerItem> favorites = query.find();
    query.close();
    return favorites;
  }
}
