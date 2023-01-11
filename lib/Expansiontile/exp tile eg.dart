import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ExpanTile(),
  ));
}
class ExpanTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile"),),
      body: const ExpansionTile(title: Text("Colors"),subtitle:Text("Expand This Tile"),children: [
        ListTile(leading:CircleAvatar(backgroundColor: Colors.red,),title: Text("Red"),),
        ListTile(leading:CircleAvatar(backgroundColor: Colors.blue,),title: Text("blue"),),
        ListTile(leading:CircleAvatar(backgroundColor: Colors.green,),title: Text("green"),),
        ListTile(leading:CircleAvatar(backgroundColor: Colors.yellow,),title: Text("yellow"),),
      ]),
    );
  }
}
