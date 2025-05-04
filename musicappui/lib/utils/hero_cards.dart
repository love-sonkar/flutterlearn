import 'package:flutter/material.dart';

class HeroCards extends StatelessWidget {
  final String title;
  final List musicList;
  const HeroCards({super.key, required this.musicList, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: musicList.length,
      itemBuilder:
          (context, index) =>
              Container(child: Column(children: [Text("jii"), Text("Hi")])),
    );
  }
}
