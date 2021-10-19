import 'package:flutter/material.dart';

Widget CardSlider(BuildContext context, title, List<Widget> cards) {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Color(0xff1b4754),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "more",
                style: TextStyle(color: Color(0xff1b4754)),
              )
            ],
          )),
      SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: cards.map((e) => e).toList()))
    ],
  );
}
