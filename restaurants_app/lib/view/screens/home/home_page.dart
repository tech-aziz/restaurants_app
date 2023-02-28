import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants_app/view/screens/home/home_Portrait.dart';
import 'package:restaurants_app/view/screens/home/home_landscape.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: const Color(0xFF0E4A88),
          body: SafeArea(
            child: OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) =>
                  orientation == Orientation.portrait
                      ? const PortraitHome()
                      : const LandScapeHome(),
            ),
          ),
        ),
      ),
    );
  }

  // Back Button Android Behaviour
  Future<bool> _onBackPressed() async {
    final shouldPop = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(
                "Want to Exit App?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pop();
                    Get.back();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Yes",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => HomePage()));
                    Get.toNamed('/HomePage',);
                    // Get.to(const HomePage(),
                    //     transition: Transition.fadeIn,
                    //     duration: const Duration(seconds: 1));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "No",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ));
    return shouldPop ?? true;
  }
}
