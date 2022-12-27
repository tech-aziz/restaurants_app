import 'package:flutter/material.dart';
import '../widget/drawer.dart';

// ignore: must_be_immutable
class SetUpPage extends StatefulWidget {
  String itemName;
  SetUpPage({super.key, this.itemName = 'First page'});

  @override
  State<SetUpPage> createState() => _SetUpPageState();
}

class _SetUpPageState extends State<SetUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
        ),
        title: const Text(
          'Setup',
          style: TextStyle(fontSize: 19),
        ),
        titleSpacing: 0,
      ),
      body: Center(
        child: Text(widget.itemName.toString()),
      ),
    );
  }

  // AppBar buildAppBar(BuildContext context) {
  //   return AppBar(
  //       backgroundColor: Color(0xFF0E4A88),
  //       automaticallyImplyLeading: false,
  //       centerTitle: false,
  //       flexibleSpace: Padding(
  //         padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 12,left: 2),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Container(
  //                 width: .65.sw,
  //                 child: Row(
  //                   children: [
  //                     IconButton(
  //                       onPressed: (){
  //                         Navigator.of(context).pop();
  //                       },
  //                       icon: Icon(Icons.arrow_back,color: Colors.white,)),
  //                     // Icon(Icons.arrow_back,color: Colors.white,),
  //                     // SizedBox(width: 5,),
  //                     Text("Setup",style: TextStyle(color: Colors.white,fontSize: 18),)
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                   width: 45,

  //                   child: InkWell(
  //                       onTap: () {
  //                         Scaffold.of(context).openDrawer();
  //                       },
  //                       child: Padding(
  //                           padding: const EdgeInsets.symmetric(horizontal: 10),
  //                           child: Image.asset(
  //                             'assets/images/un_hold.png',
  //                             height: 45,
  //                             width: 45,
  //                           )))),
  //             ],
  //           ),
  //         ),
  //       ));
  // }
}
