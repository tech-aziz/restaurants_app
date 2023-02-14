import 'package:get/get_navigation/src/routes/get_route.dart';
import '../view/screens/dashboard/dashboard_home.dart';
import '../view/screens/home/home_Portrait.dart';
import '../view/screens/home/home_page.dart';
import '../view/screens/order/order_details.dart';
import '../view/screens/report/report_home.dart';

class Routes{
  static final routes = [
          GetPage(name: '/DashBoardScreen', page: (() => const DashBoardScreen())),
          GetPage(name: '/OrderScreenHome', page: (() => const OrderScreenHome())),
          GetPage(name: '/ReportHome', page: (() => const ReportHome())),
          GetPage(name: '/HomePage', page: (() => const HomePage())),
          GetPage(name: '/PortraitHome', page: (() => const PortraitHome())),
          // GetPage(name: '/SetUpPage/:name', page: (() =>  SetUpPage(name: '',))),
  ];
}