import "package:flutter/material.dart";
import 'package:myapp/widgets/card_item.dart';
import 'package:myapp/widgets/card_slider.dart';
import 'package:myapp/widgets/top_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [
      CardItem("", "هێمن کامەران هیوا", "٠٧٥٠١٢٣٤٥٦٧", "جامچی"),
      CardItem("", "هێمن کامەران هیوا", "٠٧٥٠١٢٣٤٥٦٧", "جامچی"),
      CardItem("", "هێمن کامەران هیوا", "٠٧٥٠١٢٣٤٥٦٧", "جامچی"),
      CardItem("", "هێمن کامەران هیوا", "٠٧٥٠١٢٣٤٥٦٧", "جامچی"),
      CardItem("", "هێمن کامەران هیوا", "٠٧٥٠١٢٣٤٥٦٧", "جامچی"),
    ];

    return Expanded(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const TopCarousel(),
                CardSlider(context, "Best Of Month", cards),
                CardSlider(context, "Latest", cards),
                CardSlider(context, "Featured", cards),
              ],
            )));
  }
}
