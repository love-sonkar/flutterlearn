import 'package:flutter/material.dart';
import 'package:musicappui/Components/bottom_navigation.dart';
import 'package:musicappui/screens/favorite_page.dart';
import 'package:musicappui/screens/first_page.dart';
import 'package:musicappui/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  void pageChange(int newIndex) {
    setState(() {
      currentPage = newIndex;
    });
    _pageController.animateToPage(
      newIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: [FirstPage(), FavoritePage(), ProfilePage()],
        ),
        bottomNavigationBar: BottomNavigationComponent(
          currentPageIndex: currentPage,
          pageChange: pageChange,
        ),
      ),
    );
  }
}
