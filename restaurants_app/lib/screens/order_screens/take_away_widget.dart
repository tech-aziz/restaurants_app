import 'package:flutter/material.dart';

class TakeAwayWidget extends StatefulWidget {
  const TakeAwayWidget({super.key});

  @override
  State<TakeAwayWidget> createState() => _TakeAwayWidgetState();
}

class _TakeAwayWidgetState extends State<TakeAwayWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Away page'),
      ),
    );
  }
}
