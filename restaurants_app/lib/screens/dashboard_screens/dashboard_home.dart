import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({
    super.key,
  });

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  // String name = "Today Sale";
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
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18.sp,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 0),
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
                      // name = 'Today Sale';
                      // popUpShowMessage(
                      //   name,
                      // );
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
                      // name = 'Weekly Sale';
                      // popUpShowMessage(
                      //   name,
                      // );
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
                      // name = 'Monthly Sale';
                      // popUpShowMessage(
                      //   name,
                      // );
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
                      // name = 'Yearly Sale';
                      // popUpShowMessage(
                      //   name,
                      // );
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
                      // name = 'Total Sale';
                      // popUpShowMessage(
                      //   name,
                      // );
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
                      0.0,
                      const Color(0xff815F53),
                      const Color(0xffFFFFFF),
                      Icons.point_of_sale_outlined,
                      const Color(0xffFFFFFF)),
                  SizedBox(
                    width: 5.w,
                  ),
                  customContainer(
                      'Cash',
                      0.0,
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
                      0.0,
                      const Color(0xffFF5925),
                      const Color(0xffFFFFFF),
                      Icons.account_balance_wallet_outlined,
                      const Color(0xffFFFFFF)),
                  SizedBox(
                    width: 5.w,
                  ),
                  customContainer(
                      'Card',
                      0.0,
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
                              0.0,
                              Image.asset(
                                'assets/images/dine_in.png',
                                height: 30.h,
                                width: 30.w,
                              )),
                          customSideContainer(
                              'Take Away',
                              0.0,
                              Image.asset(
                                'assets/images/take_away.png',
                                height: 30.h,
                                width: 30.w,
                              )),
                          customSideContainer(
                              'Delivery',
                              0.0,
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

  popUpShowMessage(String title) {
    switch (title) {
      case 'Today Sale':
        return Text('data');

      case 'Weekly Sale':
      // return weeklySaleWidget();

      case 'Monthly Sale':
      // return monthlySaleWidget();

      case 'Yearly Sale':
      // return yearlySaleWidget();

      case 'Total Sale':
      // return totalSaleWidget();

      default:
      // return customContainer(
      //     'Total Sales', 0.0, Color(0xff815F53), Icon(Icons.arrow_back));
    }
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

  // Widget todaySaleWidget() => CustomCard();

  // Widget weeklySaleWidget() {
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
  //             offset: const Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Weekly Sale")),
  //       )
  //     ],
  //   );
  // }

  // Widget monthlySaleWidget() {
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
  //             offset: const Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Monthly Sale")),
  //       )
  //     ],
  //   );
  // }

  // Widget yearlySaleWidget() {
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
  //             offset: const Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Yearly Sale")),
  //       )
  //     ],
  //   );
  // }

  // Widget totalSaleWidget() {
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
  //             offset: const Offset(0, 3), // changes position of shadow
  //           ),
  //         ], borderRadius: BorderRadius.circular(12)),
  //         child: const Center(child: Text("Total Sale")),
  //       )
  //     ],
  //   );
  // }

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
                  const Text('৳0.0',
                      style: TextStyle(
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
