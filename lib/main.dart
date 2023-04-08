import 'package:flutter/material.dart';
import 'package:mining_ap/screens/homepage.dart';

import 'package:mining_ap/screens/splashscreen.dart';
import 'constants.dart';
import 'Screens/news.dart';

void main() {
  runApp(HomeRoutes());
}

class HomeRoutes extends StatelessWidget {
  String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  String id = 'homepage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> nav = [
    
    NewsPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        textTitle: 'appbar',
      ),
      body: nav[selectedIndex],
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'news'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.blueGrey,
        onTap: onItemTapped,
      ),
    );
  }
}
