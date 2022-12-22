import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/screens/details_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Uri _url = Uri.parse('https://mediasoftbd.com/');

  //url luncher function
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E4A88),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: .38.sh,
                width: double.infinity,
                child: Image.asset('assets/images/top_home_bg.png',
                    fit: BoxFit.fill),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: .23.sh,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                            size: 90,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                  // Image.asset('assets/images/avatar.png',
                                  //     width: 100.w,
                                  //     height: 100.h,
                                  //     fit: BoxFit.cover),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    'Dashboard',
                                    style: TextStyle(
                                        letterSpacing: .1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,
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
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()));
                                    },
                                    child: Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                            Icons
                                                .settings_backup_restore_rounded,
                                            size: 90,
                                            color: Colors.white,
                                          ),
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
                                        fontSize: 20.sp,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: .23.sh,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()));
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
                                          Icons.mobile_screen_share,
                                          size: 90,
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
                                        fontSize: 20.sp,
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
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()));
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
                                          Icons.file_open_rounded,
                                          size: 90,
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
                                        fontSize: 20.sp,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 5.h,
                    // ),
                    Center(
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: .20.sh,
                        width: .6.sw,
                        child: InkWell(
                          onTap: () {
                            //url will be open
                            _launchUrl("www.mediasoftbd.com");
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
          ),
        ),
      ),
    );
  }
}
