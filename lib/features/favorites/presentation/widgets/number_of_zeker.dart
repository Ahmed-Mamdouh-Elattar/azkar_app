import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:flutter/material.dart';

class NumberOfZeker extends StatelessWidget {
  const NumberOfZeker({required this.zekerItemModel, super.key});
  final ZekerItem zekerItemModel;
  @override
  Widget build(BuildContext context) {
    return Text("${zekerItemModel.repeat}/0");
  }
}
