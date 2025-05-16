import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';

import 'package:azkar_app/core/utils/provide_data/provide_data_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_zeker_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomZekerCardProviderData extends StatefulWidget {
  const CustomZekerCardProviderData({required this.zekerItemModel, super.key});
  final ZekerItem zekerItemModel;

  @override
  State<CustomZekerCardProviderData> createState() =>
      _CustomZekerCardProviderDataState();
}

class _CustomZekerCardProviderDataState
    extends State<CustomZekerCardProviderData> {
  final GlobalKey widgtScreenShot = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ProvideDataCubit(
            widgtScreenShot: widgtScreenShot,
            zeker: widget.zekerItemModel,
          ),

      child: const CustomZekerCard(),
    );
  }
}
