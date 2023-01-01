import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class All_Charge extends StatefulWidget {
  const All_Charge({super.key});

  @override
  State<All_Charge> createState() => _All_ChargeState();
}

class _All_ChargeState extends State<All_Charge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('All Charges'),
      ),
    );
  }
}