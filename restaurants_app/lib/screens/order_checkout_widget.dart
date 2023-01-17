import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/screens/home_page.dart';
import 'package:restaurants_app/screens/order_home.dart';
import 'package:restaurants_app/screens/dine_in_widget.dart';
import 'package:restaurants_app/ui_elements/custom_app_bar.dart';
import 'package:restaurants_app/ui_elements/custom_check_out_button.dart';
import 'package:restaurants_app/ui_elements/custom_product_card.dart';
import 'package:dropdown_search/dropdown_search.dart';

class OrderCheckOut extends StatefulWidget {
  const OrderCheckOut({super.key});

  @override
  State<OrderCheckOut> createState() => _OrderCheckOutState();
}

class _OrderCheckOutState extends State<OrderCheckOut> {
  String defalutValue = 'Customers';

  // List<Map<String, dynamic>> item = [
  //   {
  //     "id": 1,
  //     "name": "Category1",
  //     "data": [
  //       {
  //         "id": 1,
  //         "name": "Apple",
  //         "image": 'assets/images/apple.jpg',
  //         "price": 23
  //       },
  //       {
  //         "id": 2,
  //         "name": "Banana",
  //         "image": 'assets/images/banana.png',
  //         "price": 25
  //       },
  //       {
  //         "id": 3,
  //         "name": "Beef",
  //         "image": 'assets/images/beef.png',
  //         "price": 25
  //       },
  //       {
  //         "id": 4,
  //         "name": "Chicken",
  //         "image": 'assets/images/chicken.png',
  //         "price": 27
  //       },
  //       {
  //         "id": 5,
  //         "name": "CocaCola",
  //         "image": 'assets/images/coca_cola.png',
  //         "price": 29
  //       }
  //     ]
  //   },
  //   {
  //     "id": 2,
  //     "name": "Category2",
  //     "data": [
  //       {"id": 1, "name": "Apple", "image": 'imagelink1'},
  //       {"id": 2, "name": "Mango", "image": 'imagelink2'},
  //       {"id": 3, "name": "product3", "image": 'imagelink3'},
  //       {"id": 4, "name": "product4", "image": 'imagelink4'},
  //       {"id": 1, "name": "product1", "image": 'imagelink1'}
  //     ]
  //   },
  //   {
  //     "id": 3,
  //     "name": "Category3",
  //     "data": [
  //       {"id": 1, "name": "Tomato", "image": 'imagelink1'},
  //       {"id": 2, "name": "Ladies Finger", "image": 'imagelink2'},
  //       {"id": 3, "name": "product3", "image": 'imagelink3'},
  //       {"id": 4, "name": "product4", "image": 'imagelink4'},
  //       {"id": 1, "name": "product1", "image": 'imagelink1'}
  //     ]
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    // setState(() {
    // var newObj =  myMap.entries.map((e) {
    //     return e.key;
    //   }).toList();
    //   print(newObj);
    // });

    return Scaffold(
      //Custom Appbar
      appBar: CustomAppBar(
        height: 115.h,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 45,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  splashColor: Colors.amber,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Home',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const DineInWidget()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset(
                              'assets/images/dine_in.png',
                              height: 30.h,
                              width: 30.w,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Dine In',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const OrderCheckOut()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset(
                              'assets/images/take_away.png',
                              height: 30.h,
                              width: 30.w,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Take Away',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const OrderCheckOut()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset(
                              'assets/images/delivery.png',
                              height: 30.h,
                              width: 30.w,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Delivery',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //More button implementation here
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
                          value: 'Customers',
                          onTap: () {
                            setState(() {
                              defalutValue = 'Customers';
                              showOrderMessage(defalutValue);
                            });
                          },
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
                                    'Customers',
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
                          value: 'Reset',
                          onTap: () {
                            setState(() {
                              defalutValue = 'Reset';
                              showOrderMessage(defalutValue);
                            });
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
                                        'Reset',
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
                          value: 'Hold',
                          onTap: () {
                            setState(() {
                              defalutValue = 'Hold';
                              showOrderMessage(defalutValue);
                            });
                          },
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
                                        'Hold',
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
                          value: 'Orders',
                          onTap: () {
                            setState(() {
                              defalutValue = 'Orders';
                              showOrderMessage(defalutValue);
                            });
                          },
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
                                        'Orders',
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                  showSearchBox: true,

                  // disabledItemFn: (String s) => s.startsWith('I'),
                ),
                items: [
                  "Pepsi",
                  "Apple",
                  "Banana",
                  'Mango',
                  'Poteto',
                  'Chicken',
                  'Beef',
                  'Drinks'
                ],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                    ),
                    // labelText: "Menu mode",
                    hintText: "Search by Category",
                  ),
                ),
                onChanged: print,
                selectedItem: "Pepsi",
              ),

              SizedBox(
                height: 8.h,
              ),
              TextField(
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: 'Search by Product...',
                prefixIcon: const Icon(Icons.search),
              )),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    CustomCard(
                      image: Image.asset(
                        'assets/images/pepsi.png',
                        width: 50.w,
                      ),
                      productName: 'Pepsi',
                      productPrice: 20.0,
                    ),
                    CustomCard(
                      image: Image.asset(
                        'assets/images/pepsi.png',
                        width: 50.w,
                      ),
                      productName: 'Pepsi',
                      productPrice: 20.0,
                    ),
                    CustomCard(
                      image: Image.asset(
                        'assets/images/pepsi.png',
                        width: 50.w,
                      ),
                      productName: 'Pepsi',
                      productPrice: 20.0,
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                height: 350.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 30.h,
                      decoration: BoxDecoration(
                          border: const Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Product Name'),
                          Container(
                              height: 35,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          Text('Unit Price'),
                          Container(
                              height: 35,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          Text('Qty'),
                          Container(
                              height: 35,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          Text('SD'),
                          Container(
                              height: 35,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          Text('VAT'),
                          Container(
                              height: 35,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          Text('Disc'),
                          Container(
                              height: 35,
                              width: 1,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          Text('Sub Total')
                        ],
                      ),
                    ),


                    
                    // ListView.builder(
                    //     shrinkWrap: true,
                    //     itemCount: item.length,
                    //     itemBuilder: (context, index) {
                    //       return Text(
                    //           item[index]['data'][2]['name'].toString());
                    //     }),



                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 1)),
                      height: 60.h,
                      child: Row(
                        children: [
                          Container(
                            width: 130.w,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        width: 1, color: Colors.black26))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Discrount: ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold)),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.black26, width: 2)),
                                      child: Center(
                                          child: Text(
                                        '0.0',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Items: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                        children: [
                                          TextSpan(
                                              text: '0',
                                              style: TextStyle(
                                                  color: Colors.black))
                                        ]),
                                  ),
                                  // child: Text(
                                  //   'Items: 0',
                                  //   style:
                                  //       TextStyle(fontWeight: FontWeight.bold),
                                  // ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 211.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Total:',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold)),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      child: Center(
                                          child: Text(
                                        '0.0',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF0E4A88),
                                            fontWeight: FontWeight.bold),
                                      )),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'SD: ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54),
                                            children: [
                                              TextSpan(
                                                  text: '0.0',
                                                  style: TextStyle(
                                                      color: Colors.black))
                                            ]),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: 'VAT: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54),
                                          children: [
                                            TextSpan(
                                                text: '0.0',
                                                style: TextStyle(
                                                    color: Colors.black))
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: RichText(
                                          text: TextSpan(
                                              text: 'Service\nCharge: ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                              children: [
                                                TextSpan(
                                                    text: '0',
                                                    style: TextStyle(
                                                        color: Colors.black))
                                              ]),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    CheckOutButton(checkOutButtonName: 'CHECK OUT'),
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

  showOrderMessage(String defalutValue) {
    switch (defalutValue) {
      case 'Customers':
      // return CustomerWidget();

      case 'Reset':
      // return ResetWidget();

      case 'Hold':
      // return HoldWidget();

      case 'Orders':
        return OrderScreen();

      // default:
      //   return CustomerWidget();
    }
  }

  // Widget CustomerWidget() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         height: 100.h,
  //         width: 200.w,
  //         decoration: BoxDecoration(boxShadow: [
  //           BoxShadow(
  //             color: Colors.green.withOpacity(0.5),
  //             spreadRadius: 5,
  //             blurRadius: 7,
  //             offset: Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Completed Order")),
  //       )
  //     ],
  //   );
  // }

  // Widget ResetWidget() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         height: 100.h,
  //         width: 200.w,
  //         decoration: BoxDecoration(boxShadow: [
  //           BoxShadow(
  //             color: Colors.green.withOpacity(0.5),
  //             spreadRadius: 5,
  //             blurRadius: 7,
  //             offset: Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Reset")),
  //       )
  //     ],
  //   );
  // }

  // Widget HoldWidget() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         height: 100.h,
  //         width: 200.w,
  //         decoration: BoxDecoration(boxShadow: [
  //           BoxShadow(
  //             color: Colors.green.withOpacity(0.5),
  //             spreadRadius: 5,
  //             blurRadius: 7,
  //             offset: Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Hold")),
  //       )
  //     ],
  //   );
  // }

  // Widget OrdersWidget() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         height: 100.h,
  //         width: 200.w,
  //         decoration: BoxDecoration(boxShadow: [
  //           BoxShadow(
  //             color: Colors.green.withOpacity(0.5),
  //             spreadRadius: 5,
  //             blurRadius: 7,
  //             offset: Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Order")),
  //       )
  //     ],
  //   );
  // }
}