import 'package:flutter/material.dart';
class Emplyes extends StatefulWidget {
  const Emplyes({super.key});

  @override
  State<Emplyes> createState() => _EmplyesState();
}

class _EmplyesState extends State<Emplyes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Employes'),
      ),
    );
  }
}