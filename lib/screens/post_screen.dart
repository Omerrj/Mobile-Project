import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/widgets/app_drawer.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    Key? key,
    required this.name,
    required this.job,
    required this.phone,
    required this.image,
  }) : super(key: key);

  final String name;
  final String phone;
  final String job;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.black38, blurRadius: 5)
                    ]),
                    child: Image.network(
                      "https://gcdn.pbrd.co/images/JyyPNbgRFFiD.png?o=1",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 40,
                      color: Theme.of(context).primaryColor,
                    )),
              ),
              Positioned(
                  left: 10,
                  top: 100,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        image,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    radius: 60,
                  )),
              Positioned(
                  right: 0,
                  top: 80,
                  child: Container(
                      width: 60,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(21))),
                      child: const Icon(
                        Icons.favorite_outlined,
                        color: Colors.white,
                      ))),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 30),
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "ناو: $name",
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                      decoration: TextDecoration.none),
                ),
                Text(
                  "ژمارەی مۆبایل: $phone",
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).primaryColor,
                      decoration: TextDecoration.none),
                ),
                Text(
                  " پیشە: $job",
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).primaryColor,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          CardSlider(title: "ئەلبوومی کارەکانم", cards: [
            album(image),
            album(image),
            album(image),
            album(image),
          ]),
          Container(
            height: 120,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black38, width: 0.5))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "دەنگدان",
                    style: TextStyle(
                      color: Color(0xff1b4754),
                      decoration: TextDecoration.none,
                      fontSize: 26,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColor,
                    ),
                    Icon(Icons.star, color: Theme.of(context).primaryColor),
                    Icon(Icons.star_border,
                        color: Theme.of(context).primaryColor),
                    Icon(Icons.star_border,
                        color: Theme.of(context).primaryColor),
                    Icon(Icons.star_border,
                        color: Theme.of(context).primaryColor),
                  ],
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        "دەنگدان",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialButton(FontAwesomeIcons.facebook),
                    socialButton(FontAwesomeIcons.instagram),
                    socialButton(FontAwesomeIcons.snapchat),
                    socialButton(FontAwesomeIcons.tiktok),
                  ])),
          Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: Theme.of(context).primaryColor,
                  )))
        ],
      ),
    ));
  }
}

Widget album(image) {
  return Container(
    width: 110,
    clipBehavior: Clip.hardEdge,
    margin: const EdgeInsets.all(10),
    child: Image.network(
      image,
      fit: BoxFit.cover,
    ),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20))),
  );
}

class CardSlider extends StatelessWidget {
  const CardSlider({Key? key, required this.title, required this.cards})
      : super(key: key);
  final String title;
  final List<Widget> cards;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.black38, width: 0.5),
              top: BorderSide(color: Colors.black38, width: 0.5))),
      child: Column(
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
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                  const Text(
                    "زیاتر ببینە",
                    style: TextStyle(
                      color: Color(0xff1b4754),
                      decoration: TextDecoration.none,
                      fontSize: 18,
                    ),
                  )
                ],
              )),
          SizedBox(
              height: 130,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cards.map((e) => e).toList()))
        ],
      ),
    );
  }
}
