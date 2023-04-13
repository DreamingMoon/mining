import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';
import 'package:mining_ap/screens/settings_page_screens/coming_soon_page.dart';
import 'package:mining_ap/screens/settings_page_screens/login.dart';
import 'package:mining_ap/screens/settings_page_screens/register.dart';

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
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                  SettingsTile(
                    leadingIcon: accIcon,
                    forwardIcon: RoundIconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ComingSoon())));
                      },
                    ),
                    acText: accText,
                  ),
                  SettingsTile(
                    leadingIcon: sqIcon,
                    forwardIcon: RoundIconButton(
                      onPressed: () {
                                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ComingSoon())));
                      },
                    ),
                    acText: sqText,
                  ),
                  SettingsTile(
                    leadingIcon: communityIcon,
                    forwardIcon: RoundIconButton(
                      onPressed: () {
                                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ComingSoon())));
                      },
                    ),
                    acText: communityText,
                  ),
                  SettingsTile(
                    leadingIcon: aboutIcon,
                    forwardIcon: RoundIconButton(
                      onPressed: () {
                                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ComingSoon())));
                      },
                    ),
                    acText: aboutText,
                  ),
                  kSpacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text('Log Out'),
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
