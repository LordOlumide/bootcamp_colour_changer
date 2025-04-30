import 'dart:math';

import 'package:bootcamp_colour_changer/screens/counter_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> allColors = [
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.grey,
    Colors.amber,
    Colors.cyan,
  ];

  Color pickRandomColor() {
    int randomInt = Random().nextInt(allColors.length);
    return allColors[randomInt];
  }

  Color selectedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 300, height: 300, color: selectedColor),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                final Color randomColor = pickRandomColor();
                setState(() {
                  selectedColor = randomColor;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
              ),
              child: Text(
                'Change',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CounterScreen();
                    },
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
              ),
              child: Text(
                'Navigate to Counter screen',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
