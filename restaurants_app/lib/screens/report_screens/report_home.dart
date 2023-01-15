import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/widget/custom_check_out_button.dart';
import 'dart:async';


class ReportHome extends StatefulWidget {
  const ReportHome({super.key});

  @override
  State<ReportHome> createState() => _ReportHomeState();
}

class _ReportHomeState extends State<ReportHome> {
  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();

  // ignore: non_constant_identifier_names
  Future<void> _StartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate = picked;
      });
    }
  }

  // ignore: non_constant_identifier_names
  Future<void> _EndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Custom Appbar
      appBar: AppBar(
        titleSpacing: -5,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18.0.sp,
          ),
        ),
        title: const Text(
          'Reports',
          style: TextStyle(fontSize: 19),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 3),
            child: InkWell(
              onTap: () {},
              child: Expanded(
                flex: 1,
                child: PopupMenuButton<String>(
                  elevation: 10,
                  offset: const Offset(0, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  itemBuilder: (context) => [
                    PopupMenuItem<String>(
                      value: 'Invoice Sales Report',
                      onTap: () {},
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_add_alt,
                                color: Colors.black,
                                size: 22.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Text(
                                'Invoice Sales Report',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Divider(
                            height: 1.h,
                            indent: 12,
                            color: Colors.black12,
                            endIndent: 12,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Date Wise Sales Report',
                      onTap: () {
                        // setState(() {
                        //   defalutValue = 'Reset';
                        //   showOrderMessage(defalutValue);
                        // });
                      },
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Image.asset(
                                    'assets/images/new.png',
                                    height: 22.h,
                                    width: 22.w,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
                                    'Date Wise Sales Report',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Divider(
                                height: 1.h,
                                indent: 12,
                                color: Colors.black12,
                                endIndent: 12,
                                thickness: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Product Wise Sales Report',
                      onTap: () {},
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.pause_circle_rounded,
                                    color: Colors.black,
                                    size: 22.sp,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'Product Wise Sales Report',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Divider(
                                height: 1.h,
                                indent: 12,
                                color: Colors.black12,
                                endIndent: 12,
                                thickness: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Delivery Wise Sales Report',
                      onTap: () {},
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.black,
                                    size: 22.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
                                    'Delivery Wise Sales Report',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 28.sp,
                  ),
                ),
              ),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText:
                            "${selectedStartDate.toLocal()}".split(' ')[0],
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.keyboard),
                      ),
                      focusNode: AlwaysDisabledFocusNode(),
                      onTap: () {
                        _StartDate(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'To',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText:
                              "${selectedEndDate.toLocal()}".split(' ')[0],
                          hintStyle: const TextStyle(color: Colors.black),
                          prefixIcon: const Icon(Icons.keyboard)),
                      focusNode: AlwaysDisabledFocusNode(),
                      onTap: () {
                        _EndDate(context);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                height: 550.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 59.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Invoice\nNo',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Item\nCode',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Item\nName',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Item\nAmount',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Service\nCharge',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Discount\nAmount',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('SRV\nCharge\nVat',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Vat',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Container(
                              height: 72,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Net\nAmount',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 36.w,
                              child: const Text(
                                '',
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                              height: 200,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 27.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 30.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 45.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 38.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 18.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                          Container(
                              height: 65,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          SizedBox(
                              width: 39.w,
                              child: const Text('', style: TextStyle(fontSize: 12))),
                        ],
                      ),
                    ),
                    const Spacer(),
                    CheckOutButton(checkOutButtonName: 'Download Report'),
                  ],
                ),
              )
              // showOrderMessage(defalutValue),
            ],
          ),
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
