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

Icon backIcon = const Icon(Icons.arrow_back_ios_new_outlined);

Icon forwardIcon = const Icon(Icons.arrow_forward_ios_rounded);
Text accText = const Text('Account');
Icon accIcon = const Icon(Icons.account_box);

Icon sqIcon = const Icon(Icons.question_mark_outlined);
Text sqText = const Text('Security Question');

Icon communityIcon = const Icon(Icons.people);
Text communityText = const Text('Community');

Icon aboutIcon = const Icon(Icons.info);
Text aboutText = const Text('About');
Color kScaffColor = Colors.lightBlueAccent;
Widget kSpacer() => const SizedBox(
      height: 40.0,
    );
Widget kLargeSpacer() => const SizedBox(
      height: 100.0,
    );
Widget minerCounter() => const ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 6),
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 30,
      ),
      title: Text(
        '99000.2570 GB/s',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text('GameBar per sec'),
      trailing: Icon(
        Icons.key,
        size: 40,
      ),
    );
Widget homeContainerSpacer() => const SizedBox(
      height: 10.0,
    );

Widget dailyEarned() => const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
      ),
      title: Text('Game Bar'),
      subtitle: Text('Time id put here'),
      trailing: Text('GameBar Token Mined'),
    );

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  RoundIconButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.lightBlueAccent,
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints(maxWidth: 25.0, maxHeight: 25.0),
      shape: const CircleBorder(side: BorderSide.none),
      child: forwardIcon,
    );
  }
}
