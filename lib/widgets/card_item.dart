import 'package:flutter/material.dart';

Widget CardItem(String image, name, phone, job) {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 0.2, blurRadius: 0.5)
          ],
          color: Colors.white),
      child: SizedBox(
          width: 200,
          child: Column(
            children: [
              Expanded(
                  child: Image.network(
                "https://media.istockphoto.com/photos/smiling-chief-standing-in-auto-park-and-holding-tablet-in-background-picture-id1285071058?b=1&k=20&m=1285071058&s=170667a&w=0&h=OgYlwCG5mbl1JUc_mrIyYTxX-p03FaHHsZwYSotxSjo=",
                fit: BoxFit.cover,
              )),
              cardBottom(name, phone, job)
            ],
          )));
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
