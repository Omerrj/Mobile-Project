import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPress,
    required this.isActive,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback onPress;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: 80,
        height: 60,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                left: 7,
                top: isActive ? -25 : -10,

                // Outer Circle
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: isActive ? Colors.white : Colors.transparent,

                  // Inner circle
                  child: CircleAvatar(
                    radius: isActive ? 25 : 10,
                    backgroundColor: isActive
                        ? Theme.of(context).primaryColor
                        : Colors.transparent,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
