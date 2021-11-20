import "package:flutter/material.dart";
import 'package:myapp/widgets/card_item.dart';
import 'package:myapp/widgets/card_slider.dart';
import 'package:myapp/widgets/top_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardItem> cards = [
      const CardItem(
          image:
              "https://media.istockphoto.com/photos/portrait-young-confident-smart-asian-businessman-look-at-camera-and-picture-id1288538088?b=1&k=20&m=1288538088&s=170667a&w=0&h=3efMku7kSXUhpVrErAVVgxp6G91tRZ_5seygOn68RnE=",
          job: "جامچی",
          name: "هێمن کامەران هیوا",
          phone: "٠٧٥٠١٢٣٤٥٦٧"),
      const CardItem(
          image:
              "https://media.istockphoto.com/photos/portrait-young-confident-smart-asian-businessman-look-at-camera-and-picture-id1288538088?b=1&k=20&m=1288538088&s=170667a&w=0&h=3efMku7kSXUhpVrErAVVgxp6G91tRZ_5seygOn68RnE=",
          job: "کارەباچی",
          name: "سەلمان عومەر",
          phone: "٠٧٥٠١٢٣٤٥٦٧"),
      const CardItem(
          image: "",
          job: "جامچی",
          name: "هێمن کامەران هیوا",
          phone: "٠٧٥٠١٢٣٤٥٦٧"),
      const CardItem(
          image: "",
          job: "جامچی",
          name: "هێمن کامەران هیوا",
          phone: "٠٧٥٠١٢٣٤٥٦٧"),
    ];

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const TopCarousel(),
        CardSlider(title: "Best Of Month", cards: cards),
        CardSlider(title: "Latest", cards: cards),
        CardSlider(title: "Featured", cards: cards)
      ],
    );
  }
}
