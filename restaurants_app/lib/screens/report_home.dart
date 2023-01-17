import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/ui_elements/custom_check_out_button.dart';
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    dividerThickness: 1,
                    border: TableBorder.all(
                      width: 1.0,
                      color: Colors.black12,
                    ),
                    // Datatable widget that have the property columns and rows.
                    // ignore: prefer_const_literals_to_create_immutables
                    columns: [
                      // Set the name of the column
                      const DataColumn(
                        label: Text('Invoice No'),
                      ),
                      // ignore: prefer_const_constructors
                      const DataColumn(
                        label: Text('Item Code'),
                      ),
                      const DataColumn(
                        label: Text('Item Name'),
                      ),
                      const DataColumn(
                        label: Text('Item Amount'),
                      ),
                      const DataColumn(
                        label: Text('Service Charge'),
                      ),
                      const DataColumn(
                        label: Text('Discount Amount'),
                      ),
                      const DataColumn(
                        label: Text('SRV Charge Vat'),
                      ),
                      const DataColumn(
                        label: Text('Vat'),
                      ),
                      const DataColumn(
                        label: Text('Net Amount'),
                      ),
                    ],
                    // ignore: prefer_const_literals_to_create_immutables
                    rows: [
                      // Set the values to the columns
                      // ignore: prefer_const_literals_to_create_immutables
                      const DataRow(cells: [
                        DataCell(Text("1")),
                        DataCell(Text("001")),
                        DataCell(Text("Drinks")),
                        DataCell(Text("100")),
                        DataCell(Text("5")),
                        DataCell(Text(".5")),
                        DataCell(Text("3")),
                        DataCell(Text("2")),
                        DataCell(Text("118")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("2")),
                        DataCell(Text("002")),
                        DataCell(Text("Bananas")),
                        DataCell(Text("150")),
                        DataCell(Text("10")),
                        DataCell(Text("5")),
                        DataCell(Text("7")),
                        DataCell(Text("3")),
                        DataCell(Text("110")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("3")),
                        DataCell(Text("003")),
                        DataCell(Text("Strawberries")),
                        DataCell(Text("150")),
                        DataCell(Text("10")),
                        DataCell(Text("5")),
                        DataCell(Text("7")),
                        DataCell(Text("3")),
                        DataCell(Text("110")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("4")),
                        DataCell(Text("004")),
                        DataCell(Text("Grapes")),
                        DataCell(Text("150")),
                        DataCell(Text("10")),
                        DataCell(Text("5")),
                        DataCell(Text("7")),
                        DataCell(Text("3")),
                        DataCell(Text("110")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("5")),
                        DataCell(Text("005")),
                        DataCell(Text("Apples")),
                        DataCell(Text("150")),
                        DataCell(Text("10")),
                        DataCell(Text("5")),
                        DataCell(Text("7")),
                        DataCell(Text("3")),
                        DataCell(Text("110")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("6")),
                        DataCell(Text("006")),
                        DataCell(Text("Watermelon")),
                        DataCell(Text("176")),
                        DataCell(Text("54")),
                        DataCell(Text("12")),
                        DataCell(Text("8")),
                        DataCell(Text("7")),
                        DataCell(Text("320")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("7")),
                        DataCell(Text("007")),
                        DataCell(Text("Oranges")),
                        DataCell(Text("190")),
                        DataCell(Text("40")),
                        DataCell(Text("90")),
                        DataCell(Text("65")),
                        DataCell(Text("3")),
                        DataCell(Text("890")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("8")),
                        DataCell(Text("008")),
                        DataCell(Text("Blueberries")),
                        DataCell(Text("190")),
                        DataCell(Text("50")),
                        DataCell(Text("10")),
                        DataCell(Text("6")),
                        DataCell(Text("0")),
                        DataCell(Text("760")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("9")),
                        DataCell(Text("009")),
                        DataCell(Text("Lemons")),
                        DataCell(Text("150")),
                        DataCell(Text("40")),
                        DataCell(Text("9")),
                        DataCell(Text("7")),
                        DataCell(Text("6")),
                        DataCell(Text("410")),
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("10")),
                        DataCell(Text("010")),
                        DataCell(Text("Tomatoes")),
                        DataCell(Text("150")),
                        DataCell(Text("20")),
                        DataCell(Text("9")),
                        DataCell(Text("32")),
                        DataCell(Text("6")),
                        DataCell(Text("210")),
                      ]),
                    ]),
              ),
              CheckOutButton(checkOutButtonName: 'Download Report'),
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
