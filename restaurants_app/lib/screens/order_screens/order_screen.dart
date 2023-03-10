import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:restaurants_app/screens/order_screens/order_screen_home.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String defalutValue = 'New';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        // centerTitle: true,
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
            'Orders',
            style: TextStyle(fontSize: 19),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton<String>(
              elevation: 10,
              offset: const Offset(0, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              itemBuilder: (context) => [
                PopupMenuItem<String>(
                  value: 'New',
                  onTap: () {
                    setState(() {
                      defalutValue = 'New';
                      showOrderMessage(defalutValue);
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OrderScreenHome()));
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/new.png',
                                  height: 22,
                                  width: 22,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'New',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            height: 0,
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
                  value: 'Completed',
                  onTap: () {
                    setState(() {
                      defalutValue = 'Completed';
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
                              const Icon(
                                Icons.download_done_rounded,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Completed',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            height: 0,
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
                            children: const [
                              Icon(
                                Icons.pause_circle_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Hold',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            height: 0,
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
              ],
              child: const Icon(
                Icons.more_vert,
                size: 28,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: showOrderMessage(defalutValue),
            // child: Text('New') ? showOrderMessage(defalutValue) : OrderScreenHome(),
          ),
        ),
      ),
    );
  }

  showOrderMessage(String newValue) {
    switch (newValue) {
      case 'New':
        return newOrderWidget();

      case 'Completed':
        return completeOrderWidget();

      case 'Hold':
        return orderHoldWidget();

      default:
        return const OrderScreenHome();
    }
  }

  Widget newOrderWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/app_icon.png'),
          ),
          title: const Text('Table Name: T-1',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: .2)),
          subtitle: const Text('BDT 20.0'),
          trailing: payNowButton('Pay Now', Color(0xFF0E4A88)),
        ),
        const Divider(
          indent: 70,
          endIndent: 17,
          thickness: 1,
          color: Colors.black12,
        )
      ],
    );
  }

  Widget completeOrderWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: const Center(child: Text("Completed Order")),
        )
      ],
    );
  }

  Widget orderHoldWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: const Center(child: Text("Hold")),
        )
      ],
    );
  }

  Widget payNowButton(String buttonName, Color buttonColor) {
    return InkWell(
      onTap: () {
        //Will be navigate button
      },
      child: Container(
        height: 30.h,
        width: 80.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: buttonColor),
        child: Center(
            child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
