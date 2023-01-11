import 'package:flutter/material.dart';
import 'package:luminarproject/NamedRoutes/Second%20Page.dart';
import 'package:luminarproject/NamedRoutes/Third%20Page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      'Login': (context) => SecondPage(),
      'SignUP': (context) => ThirdPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routes"),
      ),
      body: ListView(children: [
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, 'Login');
        }, child: Text("Login")),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, 'SignUP');
        }, child: Text("Signup"))
      ]),
    );
  }
}
