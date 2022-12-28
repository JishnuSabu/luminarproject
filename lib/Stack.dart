import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
            Positioned(
              right: 20,
              bottom: 15,
              child: Container(
                width: 40,
                height: 40,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
