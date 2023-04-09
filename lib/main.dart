import 'package:flutter/material.dart';

import 'package:mining_ap/screens/splashscreen.dart';

import 'Screens/news.dart';

void main() {
  runApp(HomeRoutes());
}

class HomeRoutes extends StatelessWidget {
  String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}

