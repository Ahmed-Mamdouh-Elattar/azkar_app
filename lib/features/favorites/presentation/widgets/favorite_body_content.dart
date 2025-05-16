import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/custom_zeker_favorite_card_provider_data.dart';
import 'package:flutter/material.dart';

class FavoriteBodyContent extends StatefulWidget {
  const FavoriteBodyContent({required this.zekerFavorites, super.key});
  final List<ZekerItem> zekerFavorites;
  @override
  State<FavoriteBodyContent> createState() => _FavoriteBodyContentState();
}

class _FavoriteBodyContentState extends State<FavoriteBodyContent> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  late List<ZekerItem> zekerFavorites;
  @override
  void initState() {
    zekerFavorites = List.from(widget.zekerFavorites);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      initialItemCount: zekerFavorites.length,
      key: _listKey,
      physics: const BouncingScrollPhysics(),
      itemBuilder:
          (context, index, animation) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CustomZekerFavoriteCardProviderData(
              key: ValueKey(zekerFavorites[index].id),
              zekerItemModel: zekerFavorites[index],
              animation: animation,
              onDeleteZeker:
                  () => removeZekerFromFavorite(
                    index: index,
                    zekerItem: zekerFavorites[index],
                  ),
            ),
          ),
    );
  }

  removeZekerFromFavorite({required int index, required ZekerItem zekerItem}) {
    zekerFavorites.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => CustomZekerFavoriteCardProviderData(
        zekerItemModel: zekerItem,
        animation: animation,
        onDeleteZeker: () {},
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
