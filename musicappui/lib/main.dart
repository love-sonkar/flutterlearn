import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicappui/screens/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.quicksandTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.quicksand(
            textStyle: textTheme.bodyMedium,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(body: IntroPage()),
    );
  }
}
