import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mining_ap/main.dart';
import 'package:mining_ap/screens/homepage.dart';

class SplashPage extends StatefulWidget {
  String id = 'Splashpage';
  @override
  State<SplashPage> createState() => SplashState();
}

class SplashState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route );
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Image.asset('assets/images/moon.png'),
            ),
            const CircularProgressIndicator(
              backgroundColor: Colors.blue,
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
