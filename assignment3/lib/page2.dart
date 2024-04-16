import 'package:assignment3/page3.dart';
import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/page2.png",
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(75)
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  const SizedBox(
                      height: 50,
                    ),
                     const Text(
                       "Thousands of doctors & experts to help your health", textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.blueAccent,
                         fontSize: 45,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   const SizedBox(height: 100),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Page_3()));
                      },
                      child: Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent
                        ),
                        child: const Center(child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 30,))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
