import 'package:flutter/material.dart';

Widget customAppBar(BuildContext context) {
  return InkWell(
        onTap: () {
           Scaffold.of(context).openDrawer();
        },
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/images/un_hold.png',
              height: 30,
              width: 35,
            ))
            );

    // endDrawer: InkWell(
    //     onTap: () {
    //       const DrawerWidget();
    //     },
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 10),
    //       child: Image.asset('assets/images/un_hold.png',height: 30, width: 35,))),
  
}
