import 'package:flutter/material.dart';


class NewsPage extends StatefulWidget {
  String id = 'Newspage';
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
        // scrolledUnderElevation: scrolledUnderElevation,
        backgroundColor: const Color(0xff89341A),
        title: const Text('Game'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/coming_soon.png',
        ),
      ),
    );
  }
}
