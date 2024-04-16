import 'package:flutter/material.dart';

import 'form.dart';

class MyNavigationClass extends StatefulWidget {
  const MyNavigationClass({super.key});

  @override
  State<MyNavigationClass> createState() => _MyNavigationCState();
}

class _MyNavigationCState extends State<MyNavigationClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Navigation Bar", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyForm()));
                } ,
                child: Container(
                  child: Image.asset("images/img.jpg", width: 200, height: 200,)
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Click This Image To Navigate", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),

    );
  }
}