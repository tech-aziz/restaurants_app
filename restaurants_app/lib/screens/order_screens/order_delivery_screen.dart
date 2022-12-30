import 'package:flutter/material.dart';
class OrderDeliveryScreen extends StatefulWidget {
  const OrderDeliveryScreen({super.key});

  @override
  State<OrderDeliveryScreen> createState() => _OrderDeliveryScreenState();
}

class _OrderDeliveryScreenState extends State<OrderDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Delivery'),
      ),
    );
  }
}