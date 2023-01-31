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
    return Scaffold(
      backgroundColor: const Color(0xFF0E4A88),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) =>
              orientation == Orientation.portrait
                  ? const PortraitHome()
                  : const LandScapeHome(),
        ),
      ),
    );
  }
}
