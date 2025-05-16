import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'provide_data_state.dart';

class ProvideDataCubit extends Cubit<ProvideDataState> {
  ProvideDataCubit({
    required ZekerItem zeker,
    required GlobalKey widgtScreenShot,
    Animation<double>? animation,
    VoidCallback? voidCallback,
  }) : super(
         ProvideDataState(
           onDeleteFavoriteZeker: voidCallback,
           widgtScreenShot: widgtScreenShot,
           zekerItem: zeker,
           animation: animation,
         ),
       );

  ZekerItem get zekerItemModel => state.zekerItem;

  VoidCallback get onDeleteFavoriteZeker =>
      state.onDeleteFavoriteZeker ?? () {};

  GlobalKey get widgtScreenShot => state.widgtScreenShot;

  Animation<double>? get animation => state.animation;
}
