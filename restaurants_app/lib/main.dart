import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:restaurants_app/view/screens/home/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/screens/dashboard/dashboard_home.dart';
import 'view/screens/order/order_details.dart';
import 'view/screens/report/report_home.dart';
import 'view/screens/setup/setup_home.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp],
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'restaurants app',
        theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xFF0E4A88),
              ),
        ),
        home: const HomePage(),
        // List of Name Routing of GetX
        getPages: [
          GetPage(name: '/DashBoardScreen', page: (() => const DashBoardScreen())),
          GetPage(name: '/OrderScreenHome', page: (() => const OrderScreenHome())),
          GetPage(name: '/ReportHome', page: (() => const ReportHome())),
          // GetPage(name: '/SetUpPage/:name', page: (() =>  SetUpPage(name: '',))),
        ],
      ); // const HomePage());
    }));
  }
}
