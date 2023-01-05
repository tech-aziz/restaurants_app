import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/widget/custom_table.dart';

class DineInWidget extends StatefulWidget {
  const DineInWidget({super.key});

  @override
  State<DineInWidget> createState() => _DineInWidgetState();
}

class _DineInWidgetState extends State<DineInWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: -5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20.0,
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Table Select',
              style: TextStyle(fontSize: 19),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomTable(),
              SizedBox(
                height: 80.h,
              ),
              const Text(
                'Table:',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              _table()
            ],
          ),
        ),
      ),
    );
  }

  Widget _table() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54)),
                child: DropdownButtonFormField(
                  hint: const Text(
                    'Please Choose a Waiter',
                    style: TextStyle(color: Colors.black),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'one',
                      child: Text('one'),
                    ),
                    DropdownMenuItem(
                      value: 'two',
                      child: Text('two'),
                    ),
                    DropdownMenuItem(
                      value: 'three',
                      child: Text('three'),
                    )
                  ],
                  onChanged: (selectedItem) {
                    debugPrint(selectedItem.toString());
                  },
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Number of Guest',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.people_rounded)),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFF0E4A88),
                ),
                child: ElevatedButton(
                  child: const Text('NEXT'),
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
