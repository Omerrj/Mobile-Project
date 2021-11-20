import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        profile(),
        Expanded(
            child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  DrawerItem(label: "چوونە ژوورەوە", icon: Icons.login),
                  DrawerItem(
                      label: " دەربارەی ئێمە",
                      icon: Icons.supervised_user_circle),
                  DrawerItem(
                      label: " پەیوەندی کردن بە ئێمە",
                      icon: Icons.contact_page),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialButton(FontAwesomeIcons.facebook),
                    socialButton(FontAwesomeIcons.instagram),
                    socialButton(FontAwesomeIcons.snapchat),
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}

Widget socialButton(IconData icon) {
  return CircleAvatar(
    radius: 27,
    backgroundColor: const Color(0xff1b4754),
    child: Icon(
      icon,
      size: 35,
      color: Colors.white,
    ),
  );
}

Widget profile() {
  return SizedBox(
    height: 210,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: CircleAvatar(
            child: Image.network(
              "https://media.istockphoto.com/photos/portrait-young-confident-smart-asian-businessman-look-at-camera-and-picture-id1288538088?b=1&k=20&m=1288538088&s=170667a&w=0&h=3efMku7kSXUhpVrErAVVgxp6G91tRZ_5seygOn68RnE=",
              fit: BoxFit.cover,
              height: 200,
            ),
            radius: 50,
          ),
        ),
        const Text(
          "ناو:هێمن کامەران هیوا",
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              decoration: TextDecoration.none),
        ),
        const Text(
          "ژمارەی مۆبایل: ٠٧٥٠١٢٣٤٥٦٧",
          style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              decoration: TextDecoration.none),
        ),
        const Text(
          " عراق/هەولێر",
          style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              decoration: TextDecoration.none),
        )
      ],
    ),
  );
}
