import 'package:flutter/material.dart';

class Custom_Button extends StatefulWidget {
  String buttonName;
  Custom_Button({
    super.key,
    required this.buttonName,
  });

  @override
  State<Custom_Button> createState() => _Custom_ButtonState();
}

class _Custom_ButtonState extends State<Custom_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFF0E4A88),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(widget.buttonName),
        ));
  }
}
