import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomNav();
  }
}

class _BottomNav extends State<BottomNav> {
  @override
  void initState() {
    super.initState();
  }

  var navIndex = 0;

  void changeIndex(int newIndex) {
    setState(() {
      navIndex = newIndex;
    });
  }

  List<Map<String, dynamic>> navList = [
    {"id": 0, "icon": Icons.home_outlined},
    {"id": 1, "icon": Icons.favorite_outline},
    {"id": 2, "icon": Icons.messenger_outline},
    {"id": 3, "icon": Icons.person_2_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    for (var i = 0; i < navList.length; i++) {
      int currentIndex = navList[i]["id"];
      widgetList.add(
        GestureDetector(
          onTap: () => changeIndex(navList[i]["id"]),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color:
                  navIndex == currentIndex ? Colors.white : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Icon(
              navList[i]["icon"],
              color: navIndex == currentIndex ? Colors.black : Colors.white,
            ),
          ),
        ),
      );
    }
    return BottomAppBar(
      padding: EdgeInsets.all(10),
      height: 110,
      child: Container(
        margin: EdgeInsets.only(bottom: 13),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetList,
        ),
      ),
    );
  }
}
