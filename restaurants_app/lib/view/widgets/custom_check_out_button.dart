import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CheckOutButton extends StatelessWidget {
  String checkOutButtonName;
  CheckOutButton({super.key, required this.checkOutButtonName});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 38.h,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFF0E4A88),
        ),
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pop();
          },
          child: Text(checkOutButtonName),
        ));
  }
}
