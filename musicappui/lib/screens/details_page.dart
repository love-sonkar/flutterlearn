import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  final image2 =
      "https://static.vecteezy.com/system/resources/previews/006/949/765/large_2x/rock-and-roll-sign-symbol-with-metal-music-hand-gesture-vector.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Hero(tag: "cardsImg", child: Image(image: NetworkImage(image2))),
          Text("Hii"),
        ],
      ),
    );
  }
}
