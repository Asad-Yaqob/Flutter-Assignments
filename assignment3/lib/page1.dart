import 'dart:async';

import 'package:assignment3/page2.dart';
import 'package:flutter/material.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  void TimerFunc(){
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement((context),
      MaterialPageRoute(builder: (context) => const Page_2()),),);
  }

  void initState(){
    TimerFunc();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("images/page1.png", fit: BoxFit.cover),
    );
  }
}
