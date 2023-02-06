import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({super.key});

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {

  int tableNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.sp),
      height: 200.h,
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: () {
          setState(() {
            tableNumber++;
          });

        },
        child: Card(
          color: const Color.fromARGB(255, 233, 239, 245),
          shadowColor: const Color(0xFF0E4A88),
          elevation: 12.sp,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFF0E4A88), width: .9),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/table.png',
                color: const Color(0xFF0E4A88),
                height: 100.h,
                width: 280.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              // ignore: prefer_interpolation_to_compose_strings
              Text('T-'+
                tableNumber.toString(),
                style: TextStyle(
                    fontSize: 20.sp,
                    // fontWeight: FontWeight.bold,
                    color: const Color(0xFF0E4A88)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
