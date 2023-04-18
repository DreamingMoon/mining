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
      appBar: AppBar(title: Text('sasa')),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
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
                            Color(0xff00796B),
                            Color(0xff80CBC4),
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
          ),
          SizedBox(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => dailyEarned(),
            ),
          )
          
        ],
      ),
    );
  }
}
