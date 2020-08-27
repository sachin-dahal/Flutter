import 'package:flutter/material.dart';

import 'drawer_item.dart';

class DrawerNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/news.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              "2020 Latest News App",
              style: TextStyle(color: Colors.white),
            ),
          ),
          DrawerItem(
            title: "Home",
            topic: "trending",
          ),
          DrawerItem(
            title: "Bitcoin",
            topic: "bitcoin",
          ),
          DrawerItem(
            title: "Sport",
            topic: "sports",
          ),
          DrawerItem(
            title: "Technology",
            topic: "technology",
          ),
          DrawerItem(
            title: "Business",
            topic: "business",
          ),
          DrawerItem(
            title: "Health",
            topic: "health",
          ),
          DrawerItem(
            title: "Science",
            topic: "science",
          ),
        ],
      ),
    );
  }
}
