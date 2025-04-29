import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui/utils/Destination_list.dart';
import 'package:ui/utils/Searchbar.dart';
import 'package:ui/utils/Top_panel.dart';
import 'package:ui/utils/bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final List<String> _destinations = [
    "New York",
    "Tokyo",
    "London",
    "Sydney",
    "Paris",
    "Dubai",
    "Barcelona",
    "Rome",
    "Amsterdam",
    "Singapore",
  ];

  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 238, 238),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopPanel(),
              SizedBox(height: 20),
              Searchbar(),
              SizedBox(height: 20),
              Text(
                "Popular Destinations",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50, child: DestinationList()),
              Stackbar(),
            ],
          ),
        ),
      ),
      bottomSheet: BottomNav(),
    );
  }

  SizedBox Stackbar() {
    return SizedBox(
      height: 550,
      width: 400,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 70,
            right: 18,
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/16/22/22/bora-bora-3023437_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 18,
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/01/09/18/28/notepad-1130743_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            child: Container(
              height: 450,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2021/08/02/20/54/nature-6517866_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => toggleLike(),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            style: BorderStyle.solid,
                            color:
                                isLiked
                                    ? const Color.fromARGB(255, 189, 64, 105)
                                    : const Color.fromARGB(54, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          child:
                              isLiked
                                  ? Icon(Icons.favorite, color: Colors.pink)
                                  : Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // alignment: Alignment.bottomCenter,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [seemoreBackground()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect seemoreBackground() {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          width: double.infinity,
          height: 60,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withValues(alpha: 0.6),
                Colors.black.withValues(alpha: 0.6),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: BorderRadius.all(Radius.circular(60)),
            color: const Color.fromARGB(171, 190, 190, 190),
          ),
          child: Stack(
            children: [
              Center(
                child: Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 6,
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
