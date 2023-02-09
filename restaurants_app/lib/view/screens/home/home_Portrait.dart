import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurants_app/view/widgets/helpers/url_helpers.dart';
import 'package:restaurants_app/view/screens/setup/setup_home.dart';

class PortraitHome extends StatefulWidget {
  const PortraitHome({super.key});

  @override
  State<PortraitHome> createState() => _PortraitHomeState();
}

class _PortraitHomeState extends State<PortraitHome> {
  @override
  Widget build(BuildContext context) {
    // var height= MediaQuery.of(context).size.height;
    // var widget = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/top_home_bg.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            )),
        SizedBox(
          height: 16.h,
        ),
        Expanded(
          flex: 1,
          child: Column(
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
                                  size: 80,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
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
                            // Get.toNamed('/SetUpPage/${''})');
                            Get.to(SetUpPage(
                              name: '',
                            ));
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
                                size: 80,
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
                          height: 6.h,
                        ),
                        Text(
                          'Setup',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
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
                            Get.toNamed('/OrderScreenHome');
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
                                size: 80,
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
                          height: 6.h,
                        ),
                        Text(
                          'Order',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
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
                            Get.toNamed('/ReportHome');
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
                                size: 80,
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
                          height: 6.h,
                        ),
                        Text(
                          'Report',
                          style: TextStyle(
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Expanded(
                child: Center(
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
