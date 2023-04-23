import 'package:flutter/material.dart';

class Username extends StatefulWidget {
  const Username({Key? key}) : super(key: key);

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  final TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Card(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                  ),
                ),
                const Text('Account'),
              ],
            ),
          ),
        ],
        title: const Text('Edit Username'),
        centerTitle: true,
      ),
      body: TextFormField(
        controller: usernameController,
        decoration: const InputDecoration(labelText: 'Username'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter username';
          }
          return null;
        },
      ),
    );
  }
}
