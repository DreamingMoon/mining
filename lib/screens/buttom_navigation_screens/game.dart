import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          Axis.vertical;
          return const ListTile(
         title:  Text('change'),
          );
        }),
      ),
    );
  }
}
