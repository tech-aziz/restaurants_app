import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tables extends StatefulWidget {
  const Tables({super.key});

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0E4A88),
        onPressed: () {
          _showTableDialog();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.sp),
        height: 200.h,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: InkWell(
          onTap: () {
            
          },
          child: Card(         
            color: const Color.fromARGB(255, 233, 239, 245),
            shadowColor: Color(0xFF0E4A88),
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
                Text(
                  'T-1',
                  style: TextStyle(
                      fontSize: 20.sp,
                      // fontWeight: FontWeight.bold,
                      color: const Color(0xFF0E4A88)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showTableDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _title(),
            content: _body(),
          );
        }));
  }

  Widget _title() {
    return Row(
      children: [
        const Text('Add Table'),
        const Spacer(),
        InkWell(
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.red.shade300,
            size: 20.sp,
          ),
          onTap: () {
            // Get.back();
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  Widget _body() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                maxLength: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Table Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.table_restaurant_sharp)),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFF0E4A88),
                ),
                child: ElevatedButton(
                  child: const Text('ADD'),
                  onPressed: () {
                    // Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )),
    );
  }
}
