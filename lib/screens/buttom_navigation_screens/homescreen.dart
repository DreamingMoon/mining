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
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: TopContainer(),
          ),

          // Text(
          //   'Daily earnings',
          //   style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
          // ),
          Column(
            children: [
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: dleading,
                    title: Text(dtitle),
                    subtitle: Text(dsubtitle),
                    trailing: Text(dtrailing),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
