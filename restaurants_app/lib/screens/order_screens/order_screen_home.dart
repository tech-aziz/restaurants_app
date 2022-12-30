import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/helpers/url_helpers.dart';
import 'package:restaurants_app/screens/home_page.dart';
import 'package:restaurants_app/screens/order_screens/dine_in_widget.dart';

class OrderScreenHome extends StatefulWidget {
  const OrderScreenHome({super.key});

  @override
  State<OrderScreenHome> createState() => _OrderScreenHomeState();
}

class _OrderScreenHomeState extends State<OrderScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E4A88),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 12),
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      height: 2,
                    ),
                    Text('Home'),
                  ],
                ),
              ],
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: CircleAvatar(
            child: Image.asset('assets/images/app_icon.png'),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => OrderScreenHome()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12, top: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.discount_rounded),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Orders'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DineInWidget()));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // ignore: prefer_const_constructors
                                    child: Image.asset(
                                        'assets/images/dine_in.png',
                                        width: 60.w,
                                        height: 60.h,
                                        fit: BoxFit.cover),
                                  )),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Dine In',
                              style: TextStyle(
                                  letterSpacing: .1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DineInWidget()));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // ignore: prefer_const_constructors
                                    child: Image.asset(
                                        'assets/images/take_away.png',
                                        height: 60.h,
                                        width: 60.w,
                                        fit: BoxFit.cover),
                                  )),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Take Away',
                              style: TextStyle(
                                  letterSpacing: .1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DineInWidget()));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // ignore: prefer_const_constructors
                                    child: Image.asset(
                                        'assets/images/delivery.png',
                                        height: 60.h,
                                        width: 60.w,
                                        fit: BoxFit.cover),
                                  )),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Delivery',
                              style: TextStyle(
                                  letterSpacing: .1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: .15.sh,
                width: .53.sw,
                child: InkWell(
                  onTap: () {
                    //url will be open
                    launchUrlFunction("www.mediasoftbd.com");
                  },
                  child: Image.asset('assets/images/mediasoft_logo.png',
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
