import 'package:flutter/material.dart';
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
    );
  }

  // Back Button Android Behaviour
  Future<bool> _onBackPressed() async {
    final shouldPop = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
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
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
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
