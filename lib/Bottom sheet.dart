import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SheetBottom(),
  ));
}
class SheetBottom extends StatelessWidget {

void show (BuildContext context){
  showModalBottomSheet(context: context, elevation : 5, builder: (context) => Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(leading: Icon(Icons.train),title: Text("Train"),),
        const ListTile(leading: Icon(Icons.share),title: Text("Share"),),
        const ListTile(leading: Icon(Icons.info),title: Text("Information"),)
      ],
    ),
  ));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Bottom Sheet"),),
      body: Center(child: GestureDetector(child: const Text("Bottom Sheet"),
      onLongPress: () => show(context),)),

    );
  }
}
