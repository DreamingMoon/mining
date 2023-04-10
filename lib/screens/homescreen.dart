import 'package:flutter/material.dart';

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
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40.0,
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 6),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
            ),
            title: Text(
              '99000.2570 GB/s',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text('GameBar per sec'),
            trailing: Icon(
              Icons.key,
              size: 40,
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: const [
          //     Icon(Icons.arrow_circle_up, ), 
          //     Icon(Icons.wallet),
          //     Icon(Icons.arrow_circle_down),

          //   ],
          // ),
          const SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Daily Earnings',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text('Game Bar'),
                        subtitle: Text('Time id put here'),
                        trailing: Text('GameBar Token Mined'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text('Game Bar'),
                        subtitle: Text('Time id put here'),
                        trailing: Text('GameBar Token Mined'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text('Game Bar'),
                        subtitle: Text('Time id put here'),
                        trailing: Text('GameBar Token Mined'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
