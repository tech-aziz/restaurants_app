import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/screens/home_page.dart';
import 'package:restaurants_app/widget/custom_app_bar.dart';
import 'package:searchfield/searchfield.dart';

class OrderCheckOut extends StatefulWidget {
  const OrderCheckOut({super.key});

  @override
  State<OrderCheckOut> createState() => _OrderCheckOutState();
}

class _OrderCheckOutState extends State<OrderCheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 100,
        child: Padding(
          padding: EdgeInsets.only(
            top: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: InkWell(
                  splashColor: Colors.amber,
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Home',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset(
                              'assets/images/dine_in.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Dine In',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset(
                              'assets/images/take_away.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Take Away',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset(
                              'assets/images/delivery.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            const Text(
                              'Delivery',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 3),
                child: InkWell(
                  onTap: () {},
                  child: Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchField(
            hint: 'Search Category Here',
            searchInputDecoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey.shade200, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.8), width: 2),
                    borderRadius: BorderRadius.circular(12))
                    ),
            suggestions: [
              SearchFieldListItem("Burger"),
              SearchFieldListItem('Sandwich'),
              SearchFieldListItem('KFC Chicken'),
              SearchFieldListItem('Chicken Fries'),
              SearchFieldListItem('Chicken Nuggets'),
            ]),
      ),
    );
  }
}
