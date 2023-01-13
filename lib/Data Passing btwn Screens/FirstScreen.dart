import 'package:flutter/material.dart';
import 'package:luminarproject/Data%20Passing%20btwn%20Screens/SecondScreen.dart';
import 'package:luminarproject/Data%20Passing%20btwn%20Screens/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
    routes: {
      "Second": (context) => SecondScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView(
          padding: EdgeInsets.all(14),
          children: dummyproducts.map((ex) {
            return TextButton(
                onPressed:()=> gotonext(context, ex["id"]),
                child: Text("${ex["name"]}"));
          }).toList()),
    );
  }
}

void gotonext(BuildContext context, ex) {
  Navigator.of(context).pushNamed("Second",arguments:ex);
}
