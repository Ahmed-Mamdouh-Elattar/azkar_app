import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';

import 'package:azkar_app/core/utils/provide_data/provide_data_cubit.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/custom_zeker_favorite_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomZekerFavoriteCardProviderData extends StatefulWidget {
  const CustomZekerFavoriteCardProviderData({
    required this.zekerItemModel,
    required this.animation,
    required this.onDeleteZeker,
    super.key,
  });
  final ZekerItem zekerItemModel;

  final Animation<double> animation;
  final VoidCallback onDeleteZeker;

  @override
  State<CustomZekerFavoriteCardProviderData> createState() =>
      _CustomZekerFavoriteCardProviderDataState();
}

class _CustomZekerFavoriteCardProviderDataState
    extends State<CustomZekerFavoriteCardProviderData> {
  final GlobalKey widgetSCreenShot = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ProvideDataCubit(
            voidCallback: widget.onDeleteZeker,
            widgtScreenShot: widgetSCreenShot,
            zeker: widget.zekerItemModel,
            animation: widget.animation,
          ),
      child: const CustomZekerFavoriteCard(),
    );
  }
}
