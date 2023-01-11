import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Named Routes"),),
      body: ListView(children: [
        ElevatedButton(onPressed: (){}, child: Text("My Signup page")),

      ]),
    );
  }
}
