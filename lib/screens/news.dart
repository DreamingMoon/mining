import 'package:flutter/material.dart';
import 'homepage.dart';

class NewsPage extends StatefulWidget {
  String id = 'Newspage';
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
