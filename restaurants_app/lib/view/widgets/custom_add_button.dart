import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AddButton extends StatelessWidget {
  String addButtonName;
  ElevatedButton ?button;
  AddButton({
    super.key,
    required this.addButtonName,
    this.button
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35.h, 
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF0E4A88),
        ),
        child: button);
  }
}
