import 'package:flutter/material.dart';
import 'package:musicappui/Components/recently_listened.dart';
import 'package:musicappui/Components/top_bar_home.dart';
import 'package:musicappui/utils/hero_section.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: TopPanel(),
        ),
        Expanded(
          child: ListView(
            children: [
              SizedBox(height: 5),
              HeroSection(),
              SizedBox(height: 20),
              RecentlyListened(),
            ],
          ),
        ),
      ],
    );
  }
}
