import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridviewww(),
  ));
}

class Gridviewww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
        children: [
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
          const Image(image: AssetImage("assets/IMAGES/G1.jpg")),
        ],
      ),
    );
  }
}
