import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Container(
          margin: EdgeInsets.only(right: 4),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.settings, color: Colors.white),
        ),
        hintText: "Search...",
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        alignLabelWithHint: true,
      ),
    );
  }
}
