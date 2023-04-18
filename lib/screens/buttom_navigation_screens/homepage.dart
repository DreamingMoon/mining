import 'package:flutter/material.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/homescreen.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/settings.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/wallet.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/game.dart';

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
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
        unselectedItemColor: Colors.white.withOpacity(.60),
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
      body:_navScreen[_selectedindex],
    );
  }
}
