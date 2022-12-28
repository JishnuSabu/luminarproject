import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: GridCount(),
  ));
}

class GridCount extends StatelessWidget {
  @override
  var images = [
    "assets/IMAGES/G1.jpg",
    "assets/IMAGES/G2.jpg",
    "assets/IMAGES/G4.jpeg",
    "assets/IMAGES/G5.jpeg",
    "assets/IMAGES/G1.jpg",
    "assets/IMAGES/G2.jpg",
    "assets/IMAGES/G4.jpeg",
    "assets/IMAGES/G5.jpeg",
    "assets/IMAGES/G1.jpg",
    "assets/IMAGES/G2.jpg",
    "assets/IMAGES/G4.jpeg",
    "assets/IMAGES/G5.jpeg",
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
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(20, (index) {
          return Card(child: Image(image: AssetImage(images[index])));
        }),
      ),
    );
  }
}
