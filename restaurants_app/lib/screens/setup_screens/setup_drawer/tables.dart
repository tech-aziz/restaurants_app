import 'package:flutter/material.dart';
class Tables extends StatefulWidget {
  const Tables({super.key});

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Tables'),
      ),
    );
  }
}