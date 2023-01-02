import 'package:flutter/material.dart';
class Payment_Method extends StatefulWidget {
  const Payment_Method({super.key});

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Payment'),
      ),
    );
  }
}