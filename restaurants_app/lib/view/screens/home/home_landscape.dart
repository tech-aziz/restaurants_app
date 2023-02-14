import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurants_app/view/widgets/helpers/url_helpers.dart';
import 'package:restaurants_app/view/screens/dashboard/dashboard_home.dart';
import 'package:restaurants_app/view/screens/order/order_details.dart';

import 'package:restaurants_app/view/screens/report/report_home.dart';
import 'package:restaurants_app/view/screens/setup/setup_home.dart';

class LandScapeHome extends StatefulWidget {
  const LandScapeHome({super.key});

  @override
  State<LandScapeHome> createState() => _LandScapeHomeState();
}

class _LandScapeHomeState extends State<LandScapeHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: .50.sw,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/images/top_home_bg.png', fit: BoxFit.fill),
        ),
        SizedBox(
          width: .50.sw,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed('/DashBoardScreen');
                            // Get.to(const DashBoardScreen());
                            // Get.to( const DashBoardScreen(),
                            //     transition: Transition.fadeIn,
                            //     duration: const Duration(seconds: 1));
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
                                child: Icon(
                                  Icons.dashboard,
                                  size: 75,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(SetUpPage(
                              name: '',
                            ));
                              // Get.to( SetUpPage(name: '',),
                              //   transition: Transition.fadeIn,
                              //   duration: const Duration(seconds: 1));
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
                              child: Icon(
                                Icons.inventory,
                                size: 75,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Image.asset('assets/images/item.png',
                        //     width: 100.w,
                        //     height: 100.h,
                        //     fit: BoxFit.cover),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Setup',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.to(const OrderScreenHome());
                            Get.toNamed('/OrderScreenHome');
                            // Get.to(const OrderScreenHome(),
                            //     transition: Transition.fadeIn,
                            //     duration: const Duration(seconds: 1));
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
                              child: Icon(
                                Icons.point_of_sale_outlined,
                                size: 75,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Image.asset('assets/images/new.png',
                        //     width: 100.w,
                        //     height: 100.h,
                        //     fit: BoxFit.cover),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Order',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.to(const ReportHome());
                            Get.toNamed('/ReportHome');
                            // Get.to(const ReportHome(),
                            //     transition: Transition.fadeIn,
                            //     duration: const Duration(seconds: 1));
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
                              child: Icon(
                                Icons.file_copy_outlined,
                                size: 75,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Image.asset('assets/images/sale_return.png',
                        //     width: 100.w,
                        //     height: 100.w,
                        //     fit: BoxFit.cover),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Report',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Container(
                  alignment: Alignment.topCenter,
                  height: .12.sh,
                  width: .6.sw,
                  child: InkWell(
                    onTap: () {
                      //url will be open
                      launchUrlFunction("www.mediasoftbd.com");
                    },
                    child: Image.asset('assets/images/mediasoft_logo.png',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
