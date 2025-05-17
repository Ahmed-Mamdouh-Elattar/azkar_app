import 'package:flutter/material.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/tasbeeh_counter_view_body.dart';

class TasbeehCounterView extends StatelessWidget {
  const TasbeehCounterView({
    required this.zekr,
    required this.repeat,
    super.key,
  });
  final String zekr;
  final int repeat;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: TasbeehCounterViewBody());
  }
}
