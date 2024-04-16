import 'package:assignment3/page5.dart';
import 'package:flutter/material.dart';

class Page_4 extends StatefulWidget {
  const Page_4({super.key});

  @override
  State<Page_4> createState() => _Page_4State();
}

class _Page_4State extends State<Page_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("images/page4.png", fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 470,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(75)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const Text("Let's start living healthy and well with us right now", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const  SizedBox(height: 70),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Page_5()));
                      },
                      child: Container(
                        width: 400,
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
              )
            ],
          )
        ],
      ),
    );
  }
}
