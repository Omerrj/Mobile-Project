import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.drawerPress,
  }) : super(key: key);

  final VoidCallback drawerPress;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      leading: IconButton(
          onPressed: drawerPress, icon: const Icon(Icons.sort, size: 36)),
      title: const Center(
          child: Icon(
        Icons.room,
        size: 36,
      )),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white, size: 36)),
      ],
    );
  }
}
