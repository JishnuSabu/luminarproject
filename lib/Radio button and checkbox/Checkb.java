import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Checkb(),
  ));
}

class Checkb extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Checkb();
}

class _Checkb extends State<Checkb> {

  bool value1 = false, value2 = false, value3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Check Box'),
        ), //AppBar
        body: Container(
          padding: const EdgeInsets.only(left: 300, right: 300,top: 50),
          child: Column(
            children: [
              const Text("What languages do you speak?", style: TextStyle(
                  fontSize: 18
              ),),

              const Divider(),

              CheckboxListTile(
                title: const Text('Malayalam'),
                value: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value!;
                  });
                },
              ),


              CheckboxListTile(
                title: const Text('Hindi'),
                value: value2,
                onChanged: (value) {
                  setState(() {
                    value2 = value!;
                  });
                },
              ),


              CheckboxListTile(
                title: const Text('English'),
                value: value3,
                onChanged: (value) {
                  setState(() {
                    value3 = value!;
                  });
                },
              ),
            ],
          ), //CheckboxListTile
        ),
      ),
    );
  }
}