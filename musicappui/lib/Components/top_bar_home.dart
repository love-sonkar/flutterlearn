import 'package:flutter/cupertino.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({super.key});

  final profileImg = "https://avatars.githubusercontent.com/u/82786865?v=4";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(profileImg),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1),
            ),
            child: Icon(CupertinoIcons.search),
          ),
          SizedBox(width: 20),
          Container(
            height: 50,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1),
            ),
            child: Icon(CupertinoIcons.bell),
          ),
        ],
      ),
    );
  }
}
