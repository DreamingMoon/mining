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

Widget dailyEarned() => const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
      ),
      title: Text('Inertia'),
      subtitle: Text('Time id put here'),
      trailing: Text('Inertia Token Mined'),
    );
const dleading =  CircleAvatar(
  backgroundColor: Colors.grey,
);
const  dtitle = 'Inertia';
const dsubtitle = 'Time id put here';
const dtrailing = 'Inertia Token Mined';

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
class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff212121),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              trailing: Icon(
                Icons.add_circle_outline_sharp,
                size: 40,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 10),
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
