  import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Container(),
        ],
        centerTitle: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
          child: Column(
            children: [
              // buildTopAppbar(context),
              Text('top appbar '),
              Container(
                height: 1,
                color: Colors.black54,
              ),
              // buildBottomAppBar(context)
              Text('bottom appbar')
            ],
          ),
        ));
  }