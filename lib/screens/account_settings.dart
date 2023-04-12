import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

// void main() {
//   runApp(
//     SignUpAuth(),
//   );
// }
Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();


}


class SignUpAuth extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: Accountsettings('Sign Up'),
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
  void register() async {

    final User? user = (await auth.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text))
        .user;
    if (user != null) {
      setState(() {
        success = true;
        userEmail = user.email!;
      });
    } else {
      setState(() {
        success = false;
      });
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

 
  bool success = false;
  String userEmail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter text';
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter text';
                }
                return null;
              },
            ),
            kSpacer(),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                child: const Text('Submit'),
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    return register();
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                success
                    ? (success
                        ? 'Seccessfully registered$userEmail'
                        : 'Registration failed')
                    : '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


