import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_builder(),
  ));
}

class List_with_builder extends StatelessWidget {
  var datas = ["item 1", "item 2", "item 3", "item 4", "item 5", "item 6"];
  var colors = [500, 200, 400, 300, 100, 600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List With Builder"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              color: Colors.red[colors[index]],
              child: Center(
                child: Text(datas[index]),
              ),
            );
          }),
    );
  }
}
