import 'package:flutter/material.dart';
import 'package:musicappui/utils/animated_fill_icon.dart';
import 'package:musicappui/utils/colors.dart';

class BottomNavigationComponent extends StatefulWidget {
  final int currentPageIndex;
  final Function(int) pageChange;
  const BottomNavigationComponent({
    super.key,
    required this.currentPageIndex,
    required this.pageChange,
  });

  @override
  State<BottomNavigationComponent> createState() =>
      _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: MyColors.lightGray, width: 3)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => widget.pageChange(0),
              child: AnimatedFillIcon(
                icon: Icons.home_rounded,
                isActive: widget.currentPageIndex == 0,
              ),
            ),
            GestureDetector(
              onTap: () => widget.pageChange(1),
              child: AnimatedFillIcon(
                icon: Icons.favorite,
                isActive: widget.currentPageIndex == 1,
              ),
            ),
            GestureDetector(
              onTap: () => widget.pageChange(2),
              child: AnimatedFillIcon(
                icon: Icons.person_2,
                isActive: widget.currentPageIndex == 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
