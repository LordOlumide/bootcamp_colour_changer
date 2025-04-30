import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: IconButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        color: Colors.white,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
        ),
        icon: Icon(Icons.call_made),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Text('Number: $counter', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
