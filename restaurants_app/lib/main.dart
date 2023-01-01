import 'package:flutter/material.dart';
import 'package:restaurants_app/screens/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/screens/order_screens/order_screen_home.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'restaurants app',
          theme: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: const Color(0xFF0E4A88),
                ),
          ),
          home: HomePage());// const HomePage());
    }));
  }
}
