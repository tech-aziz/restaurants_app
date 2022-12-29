import 'package:flutter/material.dart';
import 'package:restaurants_app/screens/home_page.dart';

class DashBoardScreen extends StatefulWidget {
  String? popUpItemName;
  DashBoardScreen({super.key, this.popUpItemName = 'Empty'});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  String name = "Today Sale";
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
            child: PopupMenuButton<String>(
              elevation: 10,
              offset: const Offset(0, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      name = 'Today Sale';
                      popUpShowMessage(name);
                    });
                  },
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
                                width: 10,
                              ),
                              Text(
                                'Today Sale',
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      name = 'Weekly Sale';
                      popUpShowMessage(name);
                    });
                  },
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
                                'Weekly Sale',
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      name = 'Monthly Sale';
                      popUpShowMessage(name);
                    });
                  },
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
                                'Monthly Sale',
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      name = 'Yearly Sale';
                      popUpShowMessage(name);
                    });
                  },
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
                                'Yearly Sale',
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
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      name = 'Total Sale';
                      popUpShowMessage(name);
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Total Sale',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            height: 0,
                            indent: 12,
                            color: Colors.transparent,
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
              // onSelected: (value) {
              //   if (value == 'Today Sale') {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => DashBoardScreen(
              //               popUpItemName: 'Today Sale',
              //             )));
              //   } else if (value == 'Weekly Sale') {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => DashBoardScreen(
              //               popUpItemName: 'Weekly Sale',
              //             )));
              //   } else if (value == 'Monthly Sale') {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => DashBoardScreen(
              //               popUpItemName: 'Monthly Sale',
              //             )));
              //   } else if (value == 'Yearly Sale') {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => DashBoardScreen(
              //               popUpItemName: 'Yearly Sale',
              //             )));
              //   } else if (value == 'Total Sale') {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => DashBoardScreen(
              //               popUpItemName: 'Total Sale',
              //             )));
              //   }
              // },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: popUpShowMessage(name),
          ),
        ),
      ),
    );
  }

  popUpShowMessage(String newValue) {
    switch (newValue) {
      case 'Today Sale':
        return todaySaleWidget();

      case 'Weekly Sale':
        return weeklySaleWidget();

      case 'Monthly Sale':
        return monthlySaleWidget();

      case 'Yearly Sale':
        return yearlySaleWidget();

      case 'Total Sale':
        return totalSaleWidget();

      default:
        return todaySaleWidget();
    }
  }

  Widget todaySaleWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: Center(child: Text("Today Sale")),
        )
      ],
    );
  }

  Widget weeklySaleWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: Center(child: Text("Weekly Sale")),
        )
      ],
    );
  }

  Widget monthlySaleWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: Center(child: Text("Monthly Sale")),
        )
      ],
    );
  }

  Widget yearlySaleWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: Center(child: Text("Yearly Sale")),
        )
      ],
    );
  }

  Widget totalSaleWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(12)),
          child: Center(child: Text("Total Sale")),
        )
      ],
    );
  }
}
