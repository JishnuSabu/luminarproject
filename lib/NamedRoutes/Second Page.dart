import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Named Routes"),),
      body: ListView(children: [
        ElevatedButton(onPressed: (){}, child: Text("My Login page")),

      ]),
    );
  }
}
