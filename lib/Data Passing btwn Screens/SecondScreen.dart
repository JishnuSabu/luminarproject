import 'package:flutter/material.dart';
import 'package:luminarproject/Data%20Passing%20btwn%20Screens/dummydata.dart';

class SecondScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //fetch the id from prev page
    final productId = ModalRoute.of(context)?.settings.arguments;
    //check the id found in the given list if found fetch all the values corresponding to that id
    final Product = dummyproducts.firstWhere((data) => data["id"] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(padding: EdgeInsets.all(17),
      child: Column(
        children: [
          Text("${Product["id"].toString()}"),
          Text("${Product["name"]}"),
          Text("${Product["description"]}"),
        ],
      ),),
    );
  }
}
