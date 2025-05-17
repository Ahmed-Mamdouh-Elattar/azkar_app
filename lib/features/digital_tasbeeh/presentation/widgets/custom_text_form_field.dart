import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? keyboardType;

  const CustomFormTextField({
    required this.controller,
    required this.hintText,
    this.focusNode,
    super.key,
    this.validator,
    this.onFieldSubmitted,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        hintText: hintText,
      ),
    );
  }
}
