import 'package:flutter/material.dart';

class ContactBook extends StatefulWidget {  @override
  State<StatefulWidget> createState() => _ContactBookState();
}

class _ContactBookState  extends State{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Contacts"),
  ),
      body: ListView(
    children: [
      ListTile(title: Text("Today"),),
    ],
),
);
}
