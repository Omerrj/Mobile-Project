import 'package:flutter/material.dart';
import 'package:myapp/widgets/nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key, required this.currentIndex, required this.navigate})
      : super(key: key);

  final int currentIndex;
  final void Function(int) navigate;

  bool isSelected(int index) {
    return index == currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
              icon: Icons.home,
              label: "Home",
              onPress: () => navigate(0),
              isActive: isSelected(0)),
          NavItem(
              icon: Icons.favorite,
              label: "Favourites",
              onPress: () => navigate(1),
              isActive: isSelected(1)),
          NavItem(
              icon: Icons.language,
              label: "NearBy",
              onPress: () => navigate(2),
              isActive: isSelected(2)),
          NavItem(
              icon: Icons.notifications,
              label: "Notifications",
              onPress: () => navigate(3),
              isActive: isSelected(3)),
        ],
      ),
    );
  }
}
