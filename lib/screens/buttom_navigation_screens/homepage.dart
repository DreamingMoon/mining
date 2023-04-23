import 'package:flutter/material.dart';
import 'package:mining_ap/screens/home/homescreen.dart';

import 'package:mining_ap/screens/buttom_navigation_screens/wallet.dart';
import 'package:mining_ap/screens/games/game.dart';

import '../settings/settings.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  final List<Widget> _navScreen = [
    HomeScreen(),
    NewsPage(),
    WalletPage(),
    SettingsPage(),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_rounded), label: 'games'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: 'wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
        ],
        currentIndex: _selectedindex,
        onTap: onItemTapped,
      ),
      body: _navScreen[_selectedindex],
    );
  }
}
