import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        // centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.0,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 0),
          child: Text(
            'Dashboard',
            style: TextStyle(fontSize: 19),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Today Sale',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Weekly Sale',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Monthly Sale',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Yearly Sale',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Total Sale',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              child: const Icon(
                Icons.more_vert,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
