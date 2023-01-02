// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../widget/custom_drawer.dart';


class SetUpPage extends StatefulWidget {
  Widget? customWidget;
  SetUpPage({super.key, this.customWidget});

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
        body: widget.customWidget);
  }
}
