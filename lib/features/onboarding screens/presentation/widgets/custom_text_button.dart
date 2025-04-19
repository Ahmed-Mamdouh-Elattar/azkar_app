import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    required this.textColor,
    this.onPressed,
    this.style,
    super.key,
  });
  final String text;
  final void Function()? onPressed;
  final ButtonStyle? style;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyle.styleBold18().copyWith(color: textColor),
      ),
    );
  }
}
