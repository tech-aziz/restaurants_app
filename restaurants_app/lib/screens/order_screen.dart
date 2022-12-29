import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
            'Orders',
            style: TextStyle(fontSize: 19),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton<String>(
              elevation: 10,
              offset: const Offset(0, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              itemBuilder: (context) => [
                PopupMenuItem<String>(
                  value: 'New',
                  // onTap: () {
                  //   setState(() {
                  //     popUpShowMessage('Today Sale');
                  //   });
                  // },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/new.png',
                                height: 22,
                                width: 22,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'New',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            height: 0,
                            indent: 12,
                            color: Colors.black12,
                            endIndent: 12,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Completed',
                  // onTap: () {
                  //   popUpShowMessage('Weekly Sale');
                  // },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.done_all_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Completed',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            height: 0,
                            indent: 12,
                            color: Colors.black12,
                            endIndent: 12,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Hold',
                  // onTap: () {
                  //   popUpShowMessage('Monthly Sale');
                  // },
                  child: Column(
                    children: [
                      Column(
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
                                'Hold',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            height: 0,
                            indent: 12,
                            color: Colors.black12,
                            endIndent: 12,
                            thickness: 1,
                          ),
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
              onSelected: (value) {
                if (value == 'Today Sale') {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (context) => DashBoardScreen(
                  //           popUpItemName: 'Today Sale',
                  //         )));
                } else if (value == 'Weekly Sale') {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (context) => DashBoardScreen(
                  //           popUpItemName: 'Weekly Sale',
                  //         )));
                } else if (value == 'Monthly Sale') {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (context) => DashBoardScreen(
                  //           popUpItemName: 'Monthly Sale',
                  //         )));
                } else if (value == 'Yearly Sale') {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (context) => DashBoardScreen(
                  //           popUpItemName: 'Yearly Sale',
                  //         )));
                } else if (value == 'Total Sale') {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (context) => DashBoardScreen(
                  //           popUpItemName: 'Total Sale',
                  //         )));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
