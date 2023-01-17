import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Image image;
  final String productName;
  final double productPrice;

  CustomCard(
      {required this.image,
      required this.productName,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              image,
              SizedBox(
                height: 2,
              ),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Price: ' + productPrice.toString(),
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0E4A88)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
