import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final int? maxLength;
  final int ? hintMaxLines;
  final Icon icon;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final TextEditingController? controller;


  const InputField(
      {Key? key,
      required this.hintText,
      this.labelText,
      required this.icon,
      this.contentPadding,
      this.maxLength,
      this.hintMaxLines,
      this.hintStyle,
      this.keyboardType,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: maxLength,
      decoration: InputDecoration(
          contentPadding: contentPadding,
          hintText: hintText,
          hintStyle: hintStyle,
          labelText: labelText,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
