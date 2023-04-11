import 'package:flutter/material.dart';
import 'package:mining_ap/screens/splashscreen.dart';

void main() {
  runApp(HomeRoutes());
}

class HomeRoutes extends StatelessWidget {
  String id = 'HomeRoutes';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}
