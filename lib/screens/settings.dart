import 'package:flutter/material.dart';
import 'package:mining_ap/constants.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            forwardIcon: forwardIcon,
            acText: asText,
          ),
          SettingsTile(
            leadingIcon: sqIcon,
            forwardIcon: forwardIcon,
            acText: sqText,
          ),
          SettingsTile(
            leadingIcon: communityIcon,
            forwardIcon: forwardIcon,
            acText: communityText,
          ),
          SettingsTile(
            leadingIcon: aboutIcon,
            forwardIcon: forwardIcon,
            acText: aboutText,
          ),
        ],
      ),
    );
  }
}
