import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex;
  final navigate;

  BottomNavBar({Key? key, required this.currentIndex, required this.navigate})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isSelected(int index) {
    return index == widget.currentIndex;
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
          NavItem(Icons.home, 0, "Home"),
          NavItem(Icons.favorite, 1, "Favourites"),
          NavItem(Icons.language, 2, "NearBy"),
          NavItem(Icons.notifications, 3, "Notifications"),
        ],
      ),
    );
  }

  Widget NavItem(IconData icon, int tabIndex, String label) {
    return GestureDetector(
      onTap: () {
        widget.navigate(tabIndex);
      },
      child: SizedBox(
        width: 80,
        height: 60,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                left: 7,
                top: isSelected(tabIndex) ? -25 : -10,

                // Outer Circle
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      isSelected(tabIndex) ? Colors.white : Colors.transparent,

                  // Inner circle
                  child: CircleAvatar(
                    radius: isSelected(tabIndex) ? 25 : 10,
                    backgroundColor: isSelected(tabIndex)
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
