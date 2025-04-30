import 'package:bootcamp_colour_changer/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorChangingApp());
}

class ColorChangingApp extends StatelessWidget {
  const ColorChangingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

