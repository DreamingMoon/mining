import 'package:flutter/material.dart';
import 'package:mining_ap/screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';

void main()  {
 
  runApp(HomeRoutes());
}

class HomeRoutes extends StatelessWidget {
  String id = 'HomeRoutes';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
