import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_seperated(),
  ));
}

class List_with_seperated extends StatelessWidget {
  var images = [
    "assets/IMAGES/G1.jpg",
    "assets/IMAGES/G2.jpg",
    "assets/IMAGES/G4.jpeg",
    "assets/IMAGES/G5.jpeg"
  ];
  var colors = [100, 200, 100, 400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (Context, index) {
        return Card(
          color: Colors.yellow[colors[index]],
          child: Image.asset(images[index]),
        );
      }, separatorBuilder: (Context ,index){return Divider(
        thickness: 6,
        color: Colors.blue[colors[index]],
      );}, itemCount: images.length),

    );
  }
}