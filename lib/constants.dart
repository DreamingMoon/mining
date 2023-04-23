import 'package:flutter/material.dart';

import 'screens/settings/settings_screens/coming_soon_page.dart';

class SettingsTile extends StatefulWidget {
  const SettingsTile({
    Key? key,
    required this.settingsText,
    required this.forwardIcon,
    required this.leadingIcon,
  }) : super(key: key);
  final Text settingsText;
  final Widget forwardIcon;
  final Widget leadingIcon;

  @override
  State<SettingsTile> createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile> {
  // void ontap() {
  //   setState(() {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: ((context) => ComingSoon())));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leadingIcon,
      title: widget.settingsText,
      trailing: widget.forwardIcon,
    );
  }
}

class AccountTile extends StatefulWidget {
  const AccountTile({
    Key? key,
    this.accountText,
    this.forwardIcon,
    this.leading,
  }) : super(key: key);
  final Widget? accountText;
  final Widget? forwardIcon;
  final Text? leading;

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  void ontap() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => ComingSoon())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        
        leading: widget.leading,
        title: widget.accountText,
        trailing:widget.forwardIcon, 
        
      ),
    );
  }
}

Icon backIcon = const Icon(Icons.arrow_back_ios_new_outlined);

Icon forwardIcon = const Icon(
  Icons.arrow_forward_ios_rounded,
  color: Colors.black,
);
Text accText = const Text('Account');
Icon accIcon = const Icon(Icons.account_box);

Icon sqIcon = const Icon(Icons.question_mark_outlined);
Text sqText = const Text('Security Question');

Icon communityIcon = const Icon(Icons.people);
Text communityText = const Text('Community');

Icon aboutIcon = const Icon(Icons.info);
Text aboutText = const Text('About');
Color kScaffColor = const Color(0xff424242);
Widget kSpacer() => const SizedBox(
      height: 40.0,
    );
Widget kLargeSpacer() => const SizedBox(
      height: 100.0,
    );
Widget minerCounter() => const ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
    leading: CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 30,
    ),
    title: Text(
      '99000.2570 Σ/s',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
    subtitle: Text('Inertia per sec'),
    trailing: Icon(
      Icons.hourglass_empty_outlined,
      size: 40,
    ));
Widget homeContainerSpacer() => const SizedBox(
      height: 10.0,
    );

Widget dailyEarned() => Column(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          title: Text('Inertia'),
          subtitle: Text('Time id put here'),
          trailing: Text('Inertia Token Mined'),
        ),
        Divider()
      ],
    );
const dleading = CircleAvatar(
  backgroundColor: Colors.grey,
);
const dtitle = 'Inertia';
const dsubtitle = 'Time id put here';
const dtrailing = 'Inertia Token Mined';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  RoundIconButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: const Color(0xff89341A),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints(maxWidth: 26.0, maxHeight: 25.5),
      shape: const CircleBorder(side: BorderSide.none),
      child: forwardIcon,
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff00796B),
                  Color(0xff80CBC4),
                ],
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              kSpacer(),
              minerCounter(),
              kSpacer(),
            ],
          ),
        ),
      ],
    );
  }
}
