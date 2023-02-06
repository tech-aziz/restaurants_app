import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButton extends StatelessWidget {
  String addButtonName;
  AddButton({
    super.key,
    required this.addButtonName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35.h, 
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFF0E4A88),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(addButtonName),
        ));
  }
}
