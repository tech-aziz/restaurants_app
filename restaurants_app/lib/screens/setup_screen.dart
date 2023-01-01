import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/drawer.dart';

// ignore: must_be_immutable
class SetUpPage extends StatefulWidget {
  String itemName;
  SetUpPage({super.key, this.itemName = 'First page'});

  @override
  State<SetUpPage> createState() => _SetUpPageState();
}

class _SetUpPageState extends State<SetUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(widget.itemName.toString()),
        ),
      ),
    );
  }
}
