import 'package:flutter/material.dart';
import 'package:musicappui/screens/details_page.dart';
import 'package:musicappui/screens/home_page.dart';
import 'package:musicappui/utils/chip.dart';
import 'package:musicappui/utils/colors.dart';
import 'package:musicappui/utils/hero_section_tabs.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  List tabList = [
    {
      "tag": "All",
      "name": "All Music List",
      "musicList": [
        {
          "isLive": true,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Honey Singh",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Michal James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Amanadiel",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "God",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Trikcy",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Detective",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
      ],
    },
    {
      "tag": "IDM",
      "name": "IDM Essentials",
      "musicList": [
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
      ],
    },
    {
      "tag": "Rock",
      "name": "Rocking Band",
      "musicList": [
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
      ],
    },
    {
      "tag": "Pop",
      "name": "Pop culture",
      "musicList": [
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
      ],
    },
    {
      "tag": "Alternatives",
      "name": "Alternatives songs",
      "musicList": [
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
      ],
    },
    {
      "tag": "Playlist",
      "name": "Your Playlist",
      "musicList": [
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
        {
          "isLive": false,
          "name": "Niko James",
          "desc": "Let's come and enjoy",
          "image": "assets/images/sketch.png",
        },
      ],
    },
  ];

  int currentIndex = 0;
  List musicList = [];
  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
      musicList = tabList[newIndex]["musicList"];
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      musicList = tabList[0]["musicList"];
    });
  }

  final image2 =
      "https://static.vecteezy.com/system/resources/previews/006/949/765/large_2x/rock-and-roll-sign-symbol-with-metal-music-hand-gesture-vector.jpg";
  final image =
      "https://static.vecteezy.com/system/resources/previews/007/935/429/large_2x/illustration-for-theme-music-vector.jpg";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabList.length,
              itemBuilder: (context, index) {
                return HeroSectionTabs(
                  currentIndex: currentIndex,
                  tag: tabList[index]["tag"],
                  index: index,
                  changeIndex: (index) => changeIndex(index),
                );
              },
            ),
          ),
          SizedBox(height: 20),

          Row(
            children: [
              Text(
                tabList[currentIndex]["name"],
                style: TextStyle(fontSize: 25),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: MyColors.accentGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.refresh, color: MyColors.lightGray),
              ),
              SizedBox(width: 10),
            ],
          ),

          SizedBox(height: 15),

          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: musicList.length,
              itemBuilder: (context, index) {
                return Hero(
                  tag: "cardsImg",
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 220,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: MyColors.primaryBlack,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(image2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 5),
                            child: LabelChip(
                              isLive: musicList[index]["isLive"],
                              isCards: true,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 70,
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: MyColors.primaryBlack,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      musicList[index]["name"],
                                      style: TextStyle(
                                        color: MyColors.lightGray,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      musicList[index]["desc"],
                                      style: TextStyle(
                                        color: MyColors.lightGray,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Transform.rotate(
                                  angle: 0.785398,
                                  child: Icon(
                                    Icons.arrow_right_alt_sharp,
                                    size: 35,
                                    color: MyColors.lightGray,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
