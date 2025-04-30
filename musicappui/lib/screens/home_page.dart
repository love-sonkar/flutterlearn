import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicappui/Components/top_bar_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabController = TabController(length: 4, vsync: AnimatedListState());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //app bar
              SizedBox(height: 20),
              TopPanel(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
