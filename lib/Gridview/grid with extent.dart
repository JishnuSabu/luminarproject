import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: GridExtent(),
  ));
}
class GridExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 60,
        children:
          List.generate(30, (index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image(image: AssetImage("assets/IMAGES/G2.jpg")),
              ),
            );
          })

      ),
    );
  }
}
