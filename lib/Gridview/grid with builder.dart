import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: GridWithBuilder(),
  ));
}

class GridWithBuilder extends StatelessWidget {
  @override
  var images = [
    "assets/IMAGES/G1.jpg",
    "assets/IMAGES/G2.jpg",
    "assets/IMAGES/G4.jpeg",
    "assets/IMAGES/G5.jpeg",
    "assets/IMAGES/G1.jpg",
    "assets/IMAGES/G2.jpg",
    "assets/IMAGES/G4.jpeg",
    "assets/IMAGES/G5.jpeg"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(images[index]),
            );
          },itemCount: images.length),
    );
  }
}
