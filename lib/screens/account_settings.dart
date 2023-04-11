import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:mining_ap/Screens/account_settings.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

void main() {
  runApp(
    AccountSettings(),
  );
}

class SignUpAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: AccountSettings(title: 'Sign Up'),
    );
  }
}

class Accountsettings extends StatefulWidget {
  final String title;
  Accountsettings(this.title);

  @override
  State<Accountsettings> createState() => _AccountsettingsState();
}

class _AccountsettingsState extends State<Accountsettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: ,
        child: Column(),
      ),
    );
  }
}
