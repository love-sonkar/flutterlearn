import 'package:flutter/material.dart';

class LabelChip extends StatelessWidget {
  final bool isLive;
  final bool isCards;
  const LabelChip({super.key, required this.isLive, required this.isCards});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 1),
        borderRadius: BorderRadius.circular(isCards ? 12 : 5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: isLive ? 10 : 0,
              width: isLive ? 10 : 0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 155, 26, 26),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(width: 6),
            Text(
              isLive ? 'Live' : 'New',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
