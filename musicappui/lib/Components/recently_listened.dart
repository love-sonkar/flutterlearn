import 'package:flutter/material.dart';
import 'package:musicappui/utils/RecentlyItem.dart';

class RecentlyListened extends StatefulWidget {
  const RecentlyListened({super.key});
  @override
  State<StatefulWidget> createState() => _RecentlyListened();
}

class _RecentlyListened extends State<RecentlyListened> {
  List recentlyViewedList = [
    {
      "name": "Bone",
      "desc": "Sonic Youth",
      "image": "assets/images/sketch.png",
    },
    {"name": "Review", "desc": "Yo Yo", "image": "assets/images/sketch.png"},
    {
      "name": "Drowing",
      "desc": "New City",
      "image": "assets/images/sketch.png",
    },
    {
      "name": "Unit i found you",
      "desc": "Abby",
      "image": "assets/images/sketch.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recently listened", style: TextStyle(fontSize: 25)),
          ...recentlyViewedList.map((item) => RecentlyItem(itemMap: item)),
        ],
      ),
    );
  }
}
