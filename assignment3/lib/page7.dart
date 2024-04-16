import 'package:assignment3/homepage.dart';
import 'package:assignment3/login_homepage.dart';
import 'package:flutter/material.dart';

class Page_7 extends StatefulWidget {
  const Page_7({super.key});

  @override
  State<Page_7> createState() => _Page_7State();
}

class _Page_7State extends State<Page_7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("images/page7.png", fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75)
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    const Text("Let's start living healthy and well with us right now", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const  SizedBox(height: 80),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginLandingPage()));
                        },
                        child: Container(
                          width: 400,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blueAccent
                          ),
                          child: const Center(child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 30,))),
                        )
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
