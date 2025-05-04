import 'package:flutter/material.dart';
import 'package:musicappui/utils/colors.dart';

class HeroSectionTabs extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String tag;

  final Function(int index) changeIndex;
  const HeroSectionTabs({
    super.key,
    required this.currentIndex,
    required this.tag,
    required this.index,
    required this.changeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeIndex(index),
      child: AnimatedContainer(
        duration: Duration(microseconds: 300),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color:
                  currentIndex == index
                      ? MyColors.primaryBlack
                      : const Color.fromARGB(255, 204, 204, 204),
              width: 3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            tag,
            style: TextStyle(
              fontSize: 23,
              color:
                  currentIndex == index
                      ? MyColors.primaryBlack
                      : const Color.fromARGB(255, 204, 204, 204),
            ),
          ),
        ),
      ),
    );
  }
}
