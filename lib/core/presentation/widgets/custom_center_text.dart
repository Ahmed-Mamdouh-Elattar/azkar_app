import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomCenterText extends StatelessWidget {
  const CustomCenterText({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, style: AppTextStyle.styleBold22()));
  }
}
