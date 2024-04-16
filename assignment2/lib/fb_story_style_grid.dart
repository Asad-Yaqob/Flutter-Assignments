import 'package:flutter/material.dart';

class FbStoryGrid extends StatefulWidget {
  const FbStoryGrid({super.key});

  @override
  State<FbStoryGrid> createState() => _FbStoryGridState();
}

class _FbStoryGridState extends State<FbStoryGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Facebook", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
      ),
      body:  SizedBox(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img1.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img1.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img2.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img2.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img3.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img3.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img4.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img4.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img5.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img5.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img6.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img6.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img7.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img7.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img8.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img8.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const SizedBox( width: 10),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });
                          return AlertDialog(
                            content: Image.asset("images/img9.jpg"),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/img9.jpg", fit: BoxFit.fill)
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
