import 'package:flutter/material.dart';
import 'package:myapp/widgets/card_item.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({Key? key, required this.title, required this.cards})
      : super(key: key);
  final String title;
  final List<CardItem> cards;

  @override
  Widget build(BuildContext context) {
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
}
