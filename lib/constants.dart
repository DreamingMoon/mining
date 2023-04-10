import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    Key? key,
    required this.acText,
    required this.forwardIcon,
    required this.leadingIcon,
  }) : super(key: key);
  final Text acText;
  final Widget forwardIcon;
  final Widget leadingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      title: acText,
      trailing: forwardIcon,
    );
  }
}

Icon forwardIcon = const Icon(Icons.arrow_forward_ios_rounded);
Text asText = const Text('Account security');
Icon asIcon = const Icon(Icons.shield_outlined);


Icon sqIcon = const Icon(Icons.question_mark_outlined);
Text sqText = const Text('Security Question');

Icon communityIcon = const Icon(Icons.people);
Text communityText = const Text('Community');

Icon aboutIcon = const Icon(Icons.info);
Text aboutText = const Text('About');
