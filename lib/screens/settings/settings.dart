import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';
import 'package:mining_ap/screens/settings/settings_screens/account.dart';
import 'package:mining_ap/screens/settings/settings_screens/coming_soon_page.dart';
import 'package:mining_ap/screens/settings/settings_screens/login.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // void onButtonPressed() {
  //   setState(() {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) =>  ,
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff89341A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                children: const [Text('Welcome')],
              ),
            ),
          ),
          kSpacer(),
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const AccountPage())));
                      });
                    },
                    child: SettingsTile(
                      settingsText: accText,
                      forwardIcon: forwardIcon,
                      leadingIcon: accIcon,
                    ),
                  ),
                  const Divider(),
                  SettingsTile(
                    leadingIcon: sqIcon,
                    forwardIcon: forwardIcon,
                    settingsText: sqText,
                  ),
                  const Divider(),
                  SettingsTile(
                    leadingIcon: communityIcon,
                    forwardIcon: forwardIcon,
                    settingsText: communityText,
                  ),
                  const Divider(),
                  SettingsTile(
                    leadingIcon: aboutIcon,
                    forwardIcon: forwardIcon,
                    settingsText: aboutText,
                  ),
                  const Divider(),
                  kLargeSpacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff89341A)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: const Text('Log Out'),
                    ),
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
