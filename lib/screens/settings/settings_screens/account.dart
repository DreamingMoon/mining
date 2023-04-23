import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mining_ap/screens/settings/settings_screens/username.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
        backgroundColor: const Color(0xff89341A),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSpacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Account information'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Username())));
                  });
                },
                child: AccountTile(
                  forwardIcon: forwardIcon,
                  leading: const Text('Username'),
                  accountText: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('UserName'),
                    ],
                  ),
                ),
              ),
              const Divider(),
              AccountTile(
                forwardIcon: forwardIcon,
                leading: const Text('Email'),
                accountText: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Email'),
                  ],
                ),
              ),
              const Divider(),
              AccountTile(
                forwardIcon: forwardIcon,
                leading: const Text('Phone'),
              ),
              const Divider(),
              AccountTile(
                forwardIcon: forwardIcon,
                leading: const Text('Password'),
              ),
              kSpacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'TWO-FACTOR AUTHENTICATION',
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/s_authlock.svg',
                    semanticsLabel: 'Auth Icon',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  'Protect your Inertia account with an extra layer of security Once configured, you will be required to enter both your password and authentication code from ypur mobile phone in order to sign in.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Enable Two-Factor Authentication'),
              ),
              const Divider(),
              kSpacer(),
              AccountTile(
                forwardIcon: forwardIcon,
                leading: const Text('Blocked Users'),
              ),
              kSpacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('ACCOUNT MANAGEMENT'),
              ),
              kSpacer(),
              const ListTile(
                leading: Text(
                  'Delete Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              kSpacer(),
            ],
          )),
    );
  }
}
