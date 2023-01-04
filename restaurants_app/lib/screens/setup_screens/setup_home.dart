// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/all_charges.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/category.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/employes.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/items.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/manage.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/payment_method.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/restaurent_info.dart';
import 'package:restaurants_app/screens/setup_screens/setup_drawer/tables.dart';
import '../../widget/custom_drawer.dart';

class SetUpPage extends StatefulWidget {
  String? name;
  SetUpPage({super.key, required this.name});

  @override
  State<SetUpPage> createState() => _SetUpPageState();
}

class _SetUpPageState extends State<SetUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: DrawerWidget(),
        appBar: AppBar(
          // centerTitle: true,
          titleSpacing: -5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20.0,
            ),
          ),
          title: const Text(
            'Setup',
            style: TextStyle(fontSize: 19),
          ),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Image.asset(
                    'assets/images/drawer_menu.png',
                    height: 22,
                    width: 22,
                  ));
            })
          ],
        ),
        body: showMessage(widget.name.toString()));
  }

  showMessage(String newValue) {
    switch (newValue) {
      case 'Items':
        return items();

      case 'Category':
        return category();

      case 'Employes':
        return employes();

      case 'Tables':
        return tables();

      case 'Payment Method':
        return payment();

      case 'All Charges':
        return allCharges();

      case 'Manage':
        return manage();

      case 'Restaurent Info':
        return restaurent_Info();

      default:
        return items();
    }
  }

  //Restaurent Info Widget Start

  Widget restaurent_Info() {
    return const Restaurent_Info();
  }
  //Restaurent Info Widget End

  //All Charges Widget Start
  Widget allCharges() {
    return const All_Charge();
  }
  //All Charges Widget End

//Category Widget Start
  Widget category() {
    return const Category();
  }
  //Category Widget End

//employes Widget Start
  Widget employes() {
    return const Emplyes();
  }
  //employes Widget End

  //items Widget Start
  Widget items() {
    return const Items();
  }
  //items Widget End

  //manage Widget Start
  Widget manage() {
    return const Manage();
  }
  //manage Widget End

  //payment Widget Start
  Widget payment() {
    return const Payment_Method();
  }
  //payment Widget End

  //tables Widget Start
  Widget tables() {
    return const Tables();
  }
  //tables Widget End

}
