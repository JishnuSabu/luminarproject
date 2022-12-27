import 'package:flutter/material.dart';
//With SliverChildBuilderDelegate
void main() {
  runApp(MaterialApp(
    home: ListviewCustom(),
  ));
}

class ListviewCustom extends StatelessWidget {
  var title = ["item1", "item2", "item3", "item4", "item5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Card(
            child: Text(title[index]),
          );
        }, childCount: title.length),
      ),
    );
  }
}
