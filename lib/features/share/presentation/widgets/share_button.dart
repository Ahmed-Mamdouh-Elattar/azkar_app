import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';

import 'package:azkar_app/features/share/presentation/managers/cubit/share_zeker_cubit.dart';
import 'package:azkar_app/features/share/presentation/widgets/share_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    required this.zekerItem,
    required this.widgetScreenShot,
    super.key,
  });
  final ZekerItem zekerItem;
  final GlobalKey widgetScreenShot;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShareZekerCubit(),
      child: ShareActionButton(
        zekerItem: zekerItem,
        widgtScreenShot: widgetScreenShot,
      ),
    );
  }
}
