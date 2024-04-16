import 'package:flutter/material.dart';

class MyFbStoryGrid extends StatefulWidget {
  const MyFbStoryGrid({Key? key}) : super(key: key);

  @override
  State<MyFbStoryGrid> createState() => _MyFbStoryGridState();
}

class _MyFbStoryGridState extends State<MyFbStoryGrid> {
  @override
  Widget build(BuildContext context) {
    List<String> imagesPaths = [
      "images/img.jpg",
      "images/img1.jpg",
      "images/img2.jpg",
      "images/img3.jpg",
      "images/img4.jpg",
      "images/img5.jpg",
      "images/img6.jpg",
      "images/img7.jpg",
      "images/img8.jpg",
      "images/img9.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Facebook",
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SizedBox(
        height: 100, // Set a fixed height for the container
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imagesPaths.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      Future.delayed( const Duration(seconds: 3), () {
                        Navigator.of(context).pop();
                      });
                      return AlertDialog(
                        content: Image.asset(imagesPaths[index], fit: BoxFit.cover),
                      );
                    },
                  );
                },
                child: SizedBox(
                  height: 100,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(imagesPaths[index], fit: BoxFit.cover),
                  ),
                ),

              ),
            );
          },
        ),
      ),
    );
  }
}
