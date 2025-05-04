import 'package:flutter/material.dart';
import 'package:musicappui/utils/colors.dart';

class RecentlyItem extends StatefulWidget {
  final Map<String, dynamic> itemMap;
  const RecentlyItem({super.key, required this.itemMap});

  @override
  State<RecentlyItem> createState() => _RecentlyItemState();
}

class _RecentlyItemState extends State<RecentlyItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: MyColors.primaryBlack),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(widget.itemMap["image"], fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.itemMap["name"], style: TextStyle(fontSize: 18)),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: MyColors.accentGreen,
                    size: 20,
                  ),
                  SizedBox(width: 3),
                  Text(widget.itemMap["desc"], style: TextStyle(fontSize: 15)),
                ],
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
