import 'package:flutter/material.dart';



class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({required this.textTitle});
  final String textTitle;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => throw UnimplementedError();
}
class _CustomAppBarState extends State<CustomAppBar> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 24),
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
      ),
    );
  }
}