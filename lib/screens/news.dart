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
          title: const Text('GAmeBar'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.remove_red_eye,
                            size: 20,
                          ),
                          SizedBox(width: 20),
                          Text(
                            '1000',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        height: 20,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
