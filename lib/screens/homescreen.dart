import 'package:flutter/material.dart';

import 'package:mining_ap/constants.dart';

class HomeScreen extends StatefulWidget {
  String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kSpacer(),
          minerCounter(),
          kSpacer(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  homeContainerSpacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Daily Earnings',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      homeContainerSpacer(),
                      dailyEarned(),
                      dailyEarned(),
                      dailyEarned(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
