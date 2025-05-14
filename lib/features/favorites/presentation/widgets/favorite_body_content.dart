import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/custom_zeker_favorite_card.dart';
import 'package:flutter/material.dart';

class FavoriteBodyContent extends StatefulWidget {
  const FavoriteBodyContent({required this.zekerFavorites, super.key});
  final List<ZekerItem> zekerFavorites;
  @override
  State<FavoriteBodyContent> createState() => _FavoriteBodyContentState();
}

class _FavoriteBodyContentState extends State<FavoriteBodyContent> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      initialItemCount: widget.zekerFavorites.length,
      key: _listKey,
      physics: const BouncingScrollPhysics(),
      itemBuilder:
          (context, index, animation) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CustomZekerFavoriteCard(
              zekerItemModel: widget.zekerFavorites[index],
              animation: animation,
              onDeleteZeker:
                  () => removeZekerFromFavorite(
                    index: index,
                    zekerItem: widget.zekerFavorites[index],
                  ),
            ),
          ),
    );
  }

  removeZekerFromFavorite({required int index, required ZekerItem zekerItem}) {
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => CustomZekerFavoriteCard(
        zekerItemModel: zekerItem,
        animation: animation,
        onDeleteZeker: () {},
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
