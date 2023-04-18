import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';

class WalletPage extends StatefulWidget {
  String id = 'WalletPage';
  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffColor,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ListView(
            children: [dailyEarned()],
          ),
        ),
      ),
    );
  }
}
