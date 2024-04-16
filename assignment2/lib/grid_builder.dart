import 'package:flutter/material.dart';

class MyGridBuilder extends StatefulWidget {
  const MyGridBuilder({super.key});

  @override
  State<MyGridBuilder> createState() => _MyGridBuilderState();
}

class _MyGridBuilderState extends State<MyGridBuilder> {
  @override
  Widget build(BuildContext context) {
    List myColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple,
    ];
    return Scaffold(
      body: GridView.builder(
        itemCount: myColors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5), itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 100,
            height: 100,
            color: myColors[index],
          ),
        );
      }),
    );
  }
}
