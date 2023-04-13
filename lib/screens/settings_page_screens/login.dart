import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mining_ap/constants.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/settings.dart';
import 'package:provider/provider.dart';
import 'package:mining_ap/services/auth.dart';
import 'package:mining_ap/screens/buttom_navigation_screens/homepage.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class SignUpAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter text';
                  }
                  return null;
                },
              ),
            ),
            kSpacer(),
            ElevatedButton(
                onPressed: () async {
                  formkey.currentState!.validate();
                  await auth
                      .handleSignInemail(
                          emailController.text, passwordController.text)
                      .then((value) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => SettingsPage())));
                  }).catchError((e) => print('e'));
                },
                child: const Text('Sign Up')),
            kSpacer(),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Don\'t have an account')),
          ],
        ),
      ),
    );
  }
}
