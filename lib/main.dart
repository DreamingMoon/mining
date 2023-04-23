import 'package:flutter/material.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/homepage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:mining_ap/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyAgauqxyKV5FazSEmbJf25_Exkyxka2PPw',
        appId: '1:1035904055734:android:ddafa215d2b0a379a8e917',
        messagingSenderId: '1035904055734',
        projectId: 'gamebar-mining'),
  );
  runApp(HomeRoutes(),);
}

class HomeRoutes extends StatelessWidget {
  String id = 'HomeRoutes';
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        Provider<Auth>(
          create: (_) => Auth(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
