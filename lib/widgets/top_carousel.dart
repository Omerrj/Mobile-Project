import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

class TopCarousel extends StatefulWidget {
  const TopCarousel({Key? key}) : super(key: key);

  @override
  _TopCarouselState createState() => _TopCarouselState();
}

class _TopCarouselState extends State<TopCarousel> {
  int current = 0;
  static const List<String> images = [
    "https://images.unsplash.com/photo-1528953030358-b0c7de371f1f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdvcmtlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1558227691-41ea78d1f631?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d29ya2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/photos/work-injury-picture-id1256153526?b=1&k=20&m=1256153526&s=170667a&w=0&h=uFCs45mPt6AqL_bBUgyt1vJ0Z8NvUhPiwBhxIEiBo3o=",
    "https://media.istockphoto.com/photos/putting-in-the-dedication-to-build-her-dreams-picture-id1298550035?b=1&k=20&m=1298550035&s=170667a&w=0&h=xQmu1P5uZB3sNuqjM2CfVjLhrWhijYvy4C2v_W2wfSk="
  ];

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Carousel(_width),
        Indicator(_width),
      ],
    );
  }

  Widget Carousel(width) {
    return CarouselSlider(
      options: CarouselOptions(
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          height: 200,
          onPageChanged: (index, reason) {
            setState(() {
              current = index;
            });
          },
          viewportFraction: 1),
      items: images
          .map((e) => ClipRRect(
                  child: Image.network(
                e,
                width: width,
                fit: BoxFit.cover,
              )))
          .toList(),
    );
  }

  Widget Indicator(width) {
    return Positioned.fill(
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.asMap().entries.map((entry) {
                return Container(
                  width: 10,
                  height: 10,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      shape: BoxShape.circle,
                      color: Colors.white
                          .withOpacity(current == entry.key ? 1 : 0.4)),
                );
              }).toList(),
            )));
  }
}
