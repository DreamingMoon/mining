import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';
import 'package:mining_ap/screens/account_settings.dart';


class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void onButtonPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Accountsettings('title'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SettingsTile(
            leadingIcon: asIcon,
            forwardIcon: RoundIconButton(
              onPressed: () {
                onButtonPressed();
              },
            ),
            acText: asText,
          ),
          SettingsTile(
            leadingIcon: sqIcon,
            forwardIcon: RoundIconButton(
              onPressed: () {},
            ),
            acText: sqText,
          ),
          SettingsTile(
            leadingIcon: communityIcon,
            forwardIcon: RoundIconButton(
              onPressed: () {},
            ),
            acText: communityText,
          ),
          SettingsTile(
            leadingIcon: aboutIcon,
            forwardIcon: RoundIconButton(
              onPressed: () {},
            ),
            acText: aboutText,
          ),
        ],
      ),
    );
  }
}
