import 'dart:async';
import 'package:assignment3/page1.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void TimerFunc(){
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement((context),
    MaterialPageRoute(builder: (context) => const Page_1()),),);
  }

  void initState(){
    TimerFunc();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 220),
                child: Image.asset("images/welcome.png", width: 200, height: 80),
              ),
              Container(
                  width: 100,
                  height: 80,
                  child: Image.asset("images/main-loader.gif")
              )
            ],
          ),
        ),
      ),
    );
  }
}
