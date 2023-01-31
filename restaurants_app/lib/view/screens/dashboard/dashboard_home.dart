import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({
    super.key,
  });

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  double totalSale = 0.0;
  double cash = 0.0;
  double bkash = 0.0;
  double card = 0.0;

  double dineInValue = 0.0;
  double takeAwayValue = 0.0;
  double deliverValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        titleSpacing: -5,
        // centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18.sp,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'Dashboard',
            style: TextStyle(fontSize: 19.sp),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton<String>(
              elevation: 10,
              offset: const Offset(0, 59),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      totalSale = 4000.0; 
                      cash = 2000.0; 
                      bkash = 1500.0; 
                      card = 500.0;
                      dineInValue = 20000.0;
                      takeAwayValue = 25000.0;
                      deliverValue = 5000.0;
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Text(
                                'Today Sale',
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
                            height: 0.h,
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      totalSale = 30000.0;
                      cash = 15000.0; // change value
                      bkash = 10500.0; // change value
                      card = 5500.0;
                      dineInValue = 25000.0;
                      takeAwayValue = 30000.0;
                      deliverValue = 7000.0;
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Text(
                                'Weekly Sale',
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
                            height: 0.h,
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      totalSale = 40000.0;
                      cash = 20000.0; // change value
                      bkash = 15000.0; // change value
                      card = 5000.0;
                      dineInValue = 30000.0;
                      takeAwayValue = 35000.0;
                      deliverValue = 20000.0;
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Text(
                                'Monthly Sale',
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
                            height: 0.h,
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      totalSale = 50000.0;
                      cash = 25000.0; // change value
                      bkash = 10000.0; // change value
                      card = 15000.0;
                      dineInValue = 35000.0;
                      takeAwayValue = 40000.0;
                      deliverValue = 30000.0;
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Text(
                                'Yearly Sale',
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
                            height: 0.h,
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      totalSale = 70000.0;
                      cash = 40000.0; // change value
                      bkash = 10000.0; // change value
                      card = 20000.0;
                      dineInValue = 40000.0;
                      takeAwayValue = 45000.0;
                      deliverValue = 40000.0;
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
                                Icons.attach_money_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Text(
                                'Total Sale',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          Divider(
                            height: 0.h,
                            indent: 12,
                            color: Colors.transparent,
                            endIndent: 12,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              child: Icon(
                Icons.more_vert,
                size: 28.sp,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 15, left: 5),
                child: Text(
                  'Sales Summary',
                  style: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  customContainer(
                      'Total Sales',
                      totalSale,
                      const Color(0xff815F53),
                      const Color(0xffFFFFFF),
                      Icons.point_of_sale_outlined,
                      const Color(0xffFFFFFF)),
                  SizedBox(
                    width: 5.w,
                  ),
                  customContainer(
                      'Cash',
                      cash,
                      const Color(0xff9D29B0),
                      const Color(0xffFFFFFF),
                      Icons.account_balance_wallet_rounded,
                      const Color(0xffFFFFFF))
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  customContainer(
                      'Bkash',
                      bkash,
                      const Color(0xffFF5925),
                      const Color(0xffFFFFFF),
                      Icons.account_balance_wallet_outlined,
                      const Color(0xffFFFFFF)),
                  SizedBox(
                    width: 5.w,
                  ),
                  customContainer(
                      'Card',
                      card,
                      const Color(0xff4FB053),
                      const Color(0xffFFFFFF),
                      Icons.payment_outlined,
                      const Color(0xffFFFFFF))
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 15, left: 5),
                child: Text(
                  'Yearly Sale Chart',
                  style: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Card(
                      elevation: 15,
                      child: Container(
                        height: .40.sh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(child: Text('Show Chart')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: .40.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customSideContainer(
                              'Dine In',
                              dineInValue,
                              Image.asset(
                                'assets/images/dine_in.png',
                                height: 30.h,
                                width: 30.w,
                              )),
                          customSideContainer(
                              'Take Away',
                              takeAwayValue,
                              Image.asset(
                                'assets/images/take_away.png',
                                height: 30.h,
                                width: 30.w,
                              )),
                          customSideContainer(
                              'Delivery',
                              deliverValue,
                              Image.asset(
                                'assets/images/delivery.png',
                                height: 30.h,
                                width: 30.w,
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customContainer(String title, double amount, Color backgroundColor,
      Color textColor, IconData icon, Color iconColor) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 12,
              child: Container(
                height: 85.h,
                width: 155.w,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: textColor),
                          ),
                          Text('\$$amount',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: textColor))
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        icon,
                        size: 35.sp,
                        color: iconColor,
                      )
                    ],
                  ),
                )),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget customSideContainer(String name, double amount, Image image) {
    return Card(
      elevation: 12,
      child: SizedBox(
        width: 200.w,
        height: 83.h,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(amount.toString(),
                      style: const TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 100.h,
              width: 70.w,
              decoration: const BoxDecoration(
                  color: Color(0xFF0E4A88),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Center(child: image),
            )
          ],
        ),
      ),
    );
  }
}
