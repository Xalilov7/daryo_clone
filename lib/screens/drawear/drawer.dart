import 'package:daryo_clone/screens/drawear/drawear_header.dart';
import 'package:flutter/material.dart';

import 'drawear_body.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrwaerHeader(),
          MyDrawearBody(),
        ],
      ),
    );
  }
}
