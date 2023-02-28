import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurants_app/view/screens/order/order_checkout_widget.dart';
import 'package:restaurants_app/view/widgets/custom_table.dart';

class DineInWidget extends StatefulWidget {
  const DineInWidget({super.key});

  @override
  State<DineInWidget> createState() => _DineInWidgetState();
}

class _DineInWidgetState extends State<DineInWidget> {
  final _formKey = GlobalKey<FormState>();
  String? selectedWaiter;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
            titleSpacing: -5,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18.0.sp,
              ),
            ),
            title: const Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text(
                'Table Select',
                style: TextStyle(fontSize: 19),
              ),
            )),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
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
        ),
      ),
    );
  }

  Widget _table() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black54)),
            child: DropdownButtonFormField(
              // autovalidateMode: AutovalidateMode.always,
              value: selectedWaiter,
              hint: const Text(
                'Please Choose a Waiter',
                style: TextStyle(color: Colors.black),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Hasan',
                  child: Text('Hasan'),
                ),
                DropdownMenuItem(
                  value: 'Kamrul',
                  child: Text('Kamrul'),
                ),
                DropdownMenuItem(
                  value: 'Abdur',
                  child: Text('Abdur'),
                ),
                DropdownMenuItem(
                  value: 'Mr. Baker',
                  child: Text('Mr. Baker'),
                ),
                DropdownMenuItem(
                  value: 'Salman',
                  child: Text('Salman'),
                ),
                DropdownMenuItem(
                  value: 'Atik Hasan',
                  child: Text('Atik Hasan'),
                ),
                DropdownMenuItem(
                  value: 'Rasel Ahmed',
                  child: Text('Rasel Ahmed'),
                )
              ],
              onChanged: (selectedItem) {
                setState(() {
                  selectedWaiter = selectedItem;
                  // log(selectedWaiter.toString());
                });
              },
              validator: (value) =>
                  value == null ? 'Please Choose a Waiter' : null,

              // {
              // if(value!.isEmpty){
              //   return 'Please Choose a Waiter';
              // }

              // }
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: const TextInputType.numberWithOptions(signed: true),
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: 'Number of Guest',
                hintStyle: const TextStyle(color: Colors.black),
                prefixIcon: const Icon(Icons.people_rounded)),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Select Guest';
              }
            },
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
                if (_formKey.currentState!.validate()) {
                  Get.to(OrderCheckOut(
                    orderTypeId: 0,
                  ));
                } else {
                  return;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
