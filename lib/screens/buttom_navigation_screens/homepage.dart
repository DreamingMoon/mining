import 'package:flutter/material.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/homescreen.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/settings.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/wallet.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/news.dart';

class HomePage extends StatefulWidget {
  String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'news'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: 'wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
        ],
        currentIndex: _selectedindex,
        fixedColor: Colors.blueGrey,
        onTap: onItemTapped,
      ),
      body: IndexedStack(
        index: _selectedindex,
        children: [
          HomeScreen(),
          NewsPage(),
          WalletPage(),
          SettingsPage(),
        ],
      ),
    );
  }
}
