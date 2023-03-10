import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/all_charges.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/category.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/employes.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/items.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/manage.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/payment_method.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/restaurent_info.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/tables.dart';
import '../helpers/url_helpers.dart';
import '../screens/setup_screens/setup_home.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        elevation: 10,
        child: ListView(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
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
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'Items',
                        )));
              },
              child: itemList(
                const Icon(
                  Icons.menu_open_rounded,
                  size: 25,
                  color: Colors.black,
                ),
                'Items',
              ),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                               name: 'Category',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.category,
                    size: 25,
                    color: Colors.black,
                  ),
                  'Category'),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'Employes',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.people,
                    size: 25,
                    color: Colors.black,
                  ),
                  'Employes'),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'Tables',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.table_chart_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  'Tables'),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'Payment Method',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.payment,
                    size: 25,
                    color: Colors.black,
                  ),
                  'Payment Method'),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'All Charges',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.bookmarks_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  'All Charges'),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'Manage',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.settings,
                    size: 25,
                    color: Colors.black,
                  ),
                  'Manage'),
            ),
            const Divider(
              height: 0,
              indent: 12,
              color: Colors.black12,
              endIndent: 12,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SetUpPage(
                          name: 'Restaurent Info',
                        )));
              },
              child: itemList(
                  const Icon(
                    Icons.restaurant_menu_rounded,
                    size: 25,
                    color: Colors.black,
                  ),
                  'Restaurent Info'),
            ),
          ],
        ),
      ),
    );
  }
}

ListTile itemList(Icon icon, String name) {
  return ListTile(
    horizontalTitleGap: 0,
    leading: icon,
    title: Text(name),
  );
}
