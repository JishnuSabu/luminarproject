import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridCustom(),
  ));
}

class GridCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Icon(
            Icons.attribution_rounded,
            size: 30,
            color: Colors.red,
          );
        }, childCount: 20),
      ),
    );
  }
}
