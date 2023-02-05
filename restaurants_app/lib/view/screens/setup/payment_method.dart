// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Payment_Method extends StatefulWidget {
  const Payment_Method({super.key});

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
  TextEditingController paymentController = TextEditingController();
 
  String ? paymentType;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0E4A88),
        onPressed: () {
          _showPaymentDialog();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()
        ),
        child: Column(
          children: [
            customWidget(),
            Divider(
              height: 0.h,
              indent: 54,
              color: Colors.black12,
              endIndent: 50,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }

  void _showPaymentDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _title(),
            content: _body(),
          );
        }));
  }

  Widget customWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        // height: 70,
        child: ListTile( 
            minVerticalPadding: 10,
            leading: Expanded(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 2, color: const Color(0xFF0E4A88))),
                child: const Icon(
                  Icons.payments_rounded,
                  color: Color(0xFF0E4A88),
                  size: 35,
                ),
              ),
            ),
            title:  Text(paymentType.toString()),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                    
                      title: const Text('Wanna Delete?'),
                      actions: [
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pop(context, false), // passing false
                          child: const Text('No'),
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pop(context, true), // passing true
                          child: const Text('Yes'),
                        ),
                      ],
                    );
                  }).then((exit) {
                if (exit == null) return;

                if (exit) {
                  // user pressed Yes button
                  Get.snackbar(
                    'Delete Item', 'Successfully',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.deepOrange,
                    );
                } else {
                  // user pressed No button
                  Get.snackbar(
                    'Item not deleted', 'There were some problem',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.deepOrange,
                    );
                }
              });
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
                size: 30.sp,
              ),
            )
            ),
      ),
    );
  }

  Widget _title() {
    return Row(
      children: [
        const Text('Add Payment Method'),
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
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: paymentController,
                maxLength: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Method Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.payment)),
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
                   setState(() {
                       paymentType = paymentController.text; 
                       Navigator.of(context).pop();
                   });
                   
                    // print(paymentName);
                  },
                ),
              ),
            ],
          )),
    );
  }
}