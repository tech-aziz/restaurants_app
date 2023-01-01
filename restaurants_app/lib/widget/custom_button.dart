import 'package:flutter/material.dart';
class Custom_Button extends StatefulWidget {
  String buttonName;
  Color? backgroundColor;
  Custom_Button({super.key, required this.buttonName, this.backgroundColor});

  @override
  State<Custom_Button> createState() => _Custom_ButtonState();
}

class _Custom_ButtonState extends State<Custom_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFF0E4A88),
      ),
      child: Text(''),
    );
  }
}