import 'package:flutter/material.dart';

import 'package:mining_ap/constants.dart';

class HomeScreen extends StatefulWidget {
  String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.0, 2.5), //(x,y)
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Color(0xff212121),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xffFBE9E7),
                            Color(0xffFF7043),
                            Color(0xff89341A),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        kSpacer(),
                        minerCounter(),
                        kSpacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 16, bottom: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Transaction"),
                  Text("View All"),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => dailyEarned(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
