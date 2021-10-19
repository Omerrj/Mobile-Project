import "package:flutter/material.dart";
import 'package:myapp/screens/home_screen.dart';

import 'app_bar.dart';
import 'bottom_nav.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  static const TextStyle screenStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> screens = <Widget>[
    HomeScreen(),
    Text(
      'Favourites',
      style: screenStyle,
    ),
    Text(
      'NearBy',
      style: screenStyle,
    ),
    Text(
      "Notifications",
      style: screenStyle,
    )
  ];

  navigate(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const CustomAppBar(),
      body: Center(child: screens.elementAt(currentIndex)),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        navigate: navigate,
      ),
    );
  }
}
