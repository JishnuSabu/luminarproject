import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Radiobutton(),
  ));
}

class Radiobutton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Radiobutton();
}

class _Radiobutton extends State {

  String? drink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child:
        Column(
          children: [

            const Text("What do you prefer?", style: TextStyle(
                fontSize: 18
            ),),

            const Divider(),

            RadioListTile(
              title: const Text("Tea"),
              value: "tea",
              groupValue: drink,
              onChanged: (value){
                setState(() {
                  drink = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Coffee"),
              value: "coffee",
              groupValue: drink,
              onChanged: (value){
                setState(() {
                  drink = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Water"),
              value: "water",
              groupValue: drink,
              onChanged: (value){
                setState(() {
                  drink = value.toString();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}