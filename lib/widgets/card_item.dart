import 'package:flutter/material.dart';
import 'package:myapp/screens/post_screen.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.image,
    required this.job,
    required this.name,
    required this.phone,
  }) : super(key: key);

  final String image;
  final String name;
  final String phone;
  final String job;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                PostScreen(name: name, job: job, phone: phone, image: image)),
      ),
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, spreadRadius: 0.2, blurRadius: 0.5)
              ],
              color: Colors.white),
          child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  Expanded(
                      child: Image.network(
                    "https://media.istockphoto.com/photos/portrait-young-confident-smart-asian-businessman-look-at-camera-and-picture-id1288538088?b=1&k=20&m=1288538088&s=170667a&w=0&h=3efMku7kSXUhpVrErAVVgxp6G91tRZ_5seygOn68RnE=",
                    fit: BoxFit.cover,
                  )),
                  cardBottom(name, phone, job)
                ],
              ))),
    );
  }
}

Widget cardBottom(name, phone, job) {
  const TextStyle textStyle =
      TextStyle(fontWeight: FontWeight.bold, color: Color(0xff0e2a5e));

  return Column(children: [
    Text(
      name,
      style: textStyle,
    ),
    Text(
      'ژمارەی مۆبایل : $phone',
      style: textStyle,
      textDirection: TextDirection.rtl,
    ),
    Text(
      'پیشە : $job',
      style: textStyle,
      textDirection: TextDirection.rtl,
    ),
  ]);
}
