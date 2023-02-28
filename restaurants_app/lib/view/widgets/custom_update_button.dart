import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class UpdateButton extends StatelessWidget {
  String updateButtonName;
  UpdateButton({super.key, required this.updateButtonName});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35.h,
        width: 80.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {
            // Navigator.of(context).pop();
          },
          child: Text(updateButtonName),
        ));
  }
}
