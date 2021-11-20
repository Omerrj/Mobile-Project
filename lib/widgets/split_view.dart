import 'package:flutter/material.dart';

class SplitView extends StatelessWidget {
  const SplitView({
    Key? key,
    required this.drawer,
    required this.screen,
    required this.isActive,
  }) : super(key: key);

  final Widget drawer;
  final Widget screen;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Transform.translate(
          offset: isActive ? Offset(screenWidth / 2, 0) : const Offset(0, 0),
          child: Container(
            decoration: const BoxDecoration(color: Color(0xff1b4754)),
            child: screen,
          ),
        ),
        Container(width: 0.5, color: Colors.black),
        SizedBox(
          width: isActive ? screenWidth / 2 : 0,
          child: drawer,
        ),
      ],
    );
  }
}
