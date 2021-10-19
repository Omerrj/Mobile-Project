import 'package:flutter/material.dart';
import 'package:myapp/widgets/navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color(0xff1b4754)),
        home: const Navigation());
  }
}
