import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurants_app/database/database_helper.dart';
import 'package:restaurants_app/data/model/customer_model.dart';
import 'package:restaurants_app/view/screens/home/home_page.dart';
import 'package:restaurants_app/view/screens/order/dine_in_widget.dart';
import 'package:restaurants_app/view/ui_elements/custom_app_bar.dart';
import 'package:restaurants_app/view/ui_elements/custom_check_out_button.dart';
import 'package:restaurants_app/view/ui_elements/custom_product_card.dart';
import 'package:dropdown_search/dropdown_search.dart';

// ignore: must_be_immutable
class OrderCheckOut extends StatefulWidget {
  // int? selectedDineInValue, selectedTakeAwayValue, selectedDeliveryValue;
  int orderTypeId;
  OrderCheckOut({super.key, required this.orderTypeId
      // this.selectedDineInValue,
      // this.selectedTakeAwayValue,
      // this.selectedDeliveryValue
      });

  @override
  State<OrderCheckOut> createState() => _OrderCheckOutState();
}

class _OrderCheckOutState extends State<OrderCheckOut> {

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  // final Random _random = Random();

  String defalutValue = 'Customers';

  bool _isLoading = true;

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
        height: 110.h,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Get.to(const HomePage());
                    widget.orderTypeId = 0;
                  });
                },
                child: Container(
                  color: widget.orderTypeId == 0
                      ? Colors.white10
                      : Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.orderTypeId = 1;
                    Get.to(const DineInWidget());
                  });
                },
                child: Container(
                  color: widget.orderTypeId == 1
                      ? Colors.white10
                      : Colors.transparent,
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
              InkWell(
                onTap: () {
                  setState(() {
                    widget.orderTypeId = 2;
                  });
                },
                child: Container(
                  color: widget.orderTypeId == 2
                      ? Colors.white10
                      : Colors.transparent,
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
              InkWell(
                onTap: () {
                  setState(() {
                    widget.orderTypeId = 3;
                  });
                },
                child: Container(
                  color: widget.orderTypeId == 3
                      ? Colors.white10
                      : Colors.transparent,
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
              PopupMenuButton<String>(
                elevation: 10,
                offset: const Offset(0, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    value: 'Customers',
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          addCustomer();
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
                  ),
                  PopupMenuItem<String>(
                    value: 'Reset',
                    onTap: () {
                      setState(() {
                        defalutValue = 'Reset';
                        // showOrderMessage(defalutValue);
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
                        // showOrderMessage(defalutValue);
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
                        // showOrderMessage(defalutValue);
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
                popupProps: const PopupProps.menu(
                  showSelectedItems: true,
                  showSearchBox: true,

                  // disabledItemFn: (String s) => s.startsWith('I'),
                ),
                items: const [
                  "Pepsi",
                  "Apple",
                  "Banana",
                  'Mango',
                  'Poteto',
                  'Chicken',
                  'Beef',
                  'Drinks'
                ],
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
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
                physics: const BouncingScrollPhysics(
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
                height: 362.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 30.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Product Name'),
                          Container(
                              height: 35.h,
                              width: 1.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Unit Price'),
                          Container(
                              height: 35.h,
                              width: 1.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Qty'),
                          Container(
                              height: 35.h,
                              width: 1.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('SD'),
                          Container(
                              height: 35.h,
                              width: 1.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('VAT'),
                          Container(
                              height: 35.h,
                              width: 1.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Disc'),
                          Container(
                              height: 35.h,
                              width: 1.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black26, width: 1),
                              )),
                          const Text('Sub Total')
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

                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 1)),
                      height: 65.h,
                      child: Row(
                        children: [
                          Container(
                            width: 130.w,
                            decoration: const BoxDecoration(
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
                                    const Text('Discrount: ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold)),
                                    Container(
                                      height: 30.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.black26, width: 2)),
                                      child: Center(
                                          child: Text(
                                        '0.0',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: RichText(
                                          text: const TextSpan(
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
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: RichText(
                                          text: TextSpan(
                                              text: widget.orderTypeId == 3
                                                  ? 'Delivery\nCharge: '
                                                  : '',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                              children: [
                                                TextSpan(
                                                    text:
                                                        widget.orderTypeId == 3
                                                            ? '0'
                                                            : '',
                                                    style: const TextStyle(
                                                        color: Colors.black))
                                              ]),
                                        ),
                                      )
                                    ],
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
                          SizedBox(
                            width: 211.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text('Total:',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold)),
                                    const SizedBox(
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
                                        text: const TextSpan(
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
                                      text: const TextSpan(
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
                                          text: const TextSpan(
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

  // showOrderMessage(String defalutValue) {
  //   switch (defalutValue) {
  //     case 'Customers':
  //       return addNewCustomer();

  //     case 'Reset':
  //     // return ResetWidget();

  //     case 'Hold':
  //     // return HoldWidget();

  //     case 'Orders':
  //     // return OrderScreen();

  //     // default:
  //     //   return CustomerWidget();
  //   }
  // }

// Start add customer
  void addCustomer() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _addCustomerTitle(),
            content: _addCustomerBody(),
          );
        }));
  }

  Widget _addCustomerTitle() {
    return Row(
      children: [
        const Text('Add Customer to Ticket'),
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

  Widget _addCustomerBody() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          primary: false,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Search Customer Here',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(
                      () {
                        createCustomer();
                      },
                    );
                  },
                  child: Text(
                    'ADD NEW CUSTOMER',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: const Color(0xFF0E4A88),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                height: 0.h,
                color: Colors.black12,
                thickness: 1,
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Customer list',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder<List<Customer>>(
                  future: DatabaseHelper.instance.getCustomer(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return snapshot.data!.isEmpty
                        ? const Center(
                            child: Text('No Customer in List'),
                          )
                        : ListView(
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            children: snapshot.data!.map((customer) {
                              return Center(
                                child: Card(
                                  elevation: 12,
                                  child: ListTile(
                                    leading: const CircleAvatar(
                                      backgroundImage: NetworkImage('https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
                                    ),
                                    title: Text(customer.name),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                  },
                ),
              )
              // ListView.builder(
              //   shrinkWrap: true,
              //   physics: BouncingScrollPhysics(parent: BouncingScrollPhysics()),
              //   itemCount: 1,
              //   itemBuilder: ((context, index) {
              //     return Card(
              //       shape: RoundedRectangleBorder(
              //           side: BorderSide(color: Colors.green.shade50, width: 2),
              //           borderRadius: BorderRadius.circular(15)),
              //       elevation: 15,
              //       child: ListTile(
              //           title: Text('Name'),
              //           subtitle: Text('SubTitle'),
              //           trailing: SizedBox(
              //             width: 100,
              //             child: Row(
              //               children: [
              //                 IconButton(
              //                     onPressed: () {},
              //                     icon: Icon(
              //                       Icons.edit_rounded,
              //                       color: Colors.green,
              //                     )),
              //                 IconButton(
              //                     onPressed: () {},
              //                     icon: Icon(
              //                       Icons.delete_rounded,
              //                       color: Colors.red,
              //                     ))
              //               ],
              //             ),
              //           )),
              //     );
              //   }),
              // )
            ],
          )),
    );
  }
  // End add customer

//Start create customer
  void createCustomer() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _createCustomerTitle(),
            content: _createCustomerBody(),
          );
        }));
  }

  Widget _createCustomerTitle() {
    return Row(
      children: [
        const Text('Create Customer'),
        const Spacer(),
        InkWell(
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.red.shade300,
            size: 20.sp,
          ),
          onTap: () {
            // Get.back();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => OrderCheckOut(
                      orderTypeId: 9,
                    )));
          },
        )
      ],
    );
  }

  Widget _createCustomerBody() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Basic Info',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Customer Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.person)),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Mobile Number',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.phone_android)),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.mail)),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                controller: addressController,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    hintText: 'Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.location_on_sharp)),
              ),
              SizedBox(
                height: 30.h,
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
                  onPressed: () async {
                    await DatabaseHelper.instance.add(
                      Customer(name: nameController.text),
                    );
                    setState(() {
                      nameController.clear();
                    });
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )),
    );
  }
}
//End create customer

  // showSelectedWidget(int value) {
  //   switch (value) {
  //     case 0:
  //       return Container();
  //     case 1:
  //       return Container();

  //     case 2:
  //     return employes();

  //     case 3:
  //     return tables();

  //     default:
  //     return items();
  //   }
  // }

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

