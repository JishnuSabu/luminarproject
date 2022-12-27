import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_builder2(),
  ));
}

class List_with_builder2  extends StatelessWidget{
  var title = ["jishnu","Arjun","Ajith","Vishnu"];
  var subtitle = ["78943747","847646345","82397575","829377175"];
  var images = ["assets/IMAGES/G1.jpg","assets/IMAGES/G2.jpg","assets/IMAGES/G4.jpeg","assets/IMAGES/G5.jpeg"];
  var colors = [100,200,100,400];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Contacts"),),
     body: ListView.builder(
         itemCount :title.length,
         itemBuilder: ((BuildContext context, int index){
       return Card(
         color: Colors.blueAccent[colors[index]],
         child: ListTile(
           title: Text(title[index]),
           subtitle: Text(subtitle[index]),
           leading: Image(image: AssetImage(images[index]),),
         ),
       );
     })),
   );
  }
}