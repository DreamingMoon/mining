import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';

class ComingSoon extends StatefulWidget {
  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
                child: backIcon,
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                }),
          ),
              kLargeSpacer(),
          Center(
              child: Image.asset(
            'assets/images/coming_soon.png',
          )),
        ],
      ),
    );
  }
}
