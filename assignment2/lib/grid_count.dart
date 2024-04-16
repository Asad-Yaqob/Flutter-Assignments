import 'package:flutter/material.dart';

class MyGridCount extends StatefulWidget {
  const MyGridCount({super.key});

  @override
  State<MyGridCount> createState() => _MyGridCountState();
}

class _MyGridCountState extends State<MyGridCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.purple,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        )
      ],
      ),
    );
  }
}
