import 'package:flutter/material.dart';
class DineInWidget extends StatefulWidget {
  const DineInWidget({super.key});

  @override
  State<DineInWidget> createState() => _DineInWidgetState();
}

class _DineInWidgetState extends State<DineInWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dine in page'),
      ),
    );
  }
}