import 'package:flutter/material.dart';

class DestinationList extends StatefulWidget {
  const DestinationList({super.key});
  @override
  State<StatefulWidget> createState() => _DestinationList();
}

class _DestinationList extends State<DestinationList> {
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

  var currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => changeIndex(index),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: index == currentIndex ? Colors.black : Colors.white,
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: Text(
              _destinations[index],
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: index == currentIndex ? Colors.white : Colors.grey,
              ),
            ),
          ),
        );
      },
      itemCount: _destinations.length,
    );
  }
}
