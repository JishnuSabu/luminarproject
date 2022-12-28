import 'package:flutter/material.dart';
//With SliverChildListDelegate
void main() {
  runApp(MaterialApp(
    home: ListviewCustom2(),
  ));
}

class ListviewCustom2 extends StatelessWidget {
  var title = ["item1", "item2", "item3", "item4", "item5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: ListView.custom(
        childrenDelegate:SliverChildListDelegate([
          const Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
                title: Text("All photos"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G1.jpg")),
                trailing: Icon(Icons.image)),
          ),
          const Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
              title: const Text("whatsapp images"),
              subtitle: Text("description"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/IMAGES/G2.jpg")),
              trailing: Icon(Icons.image),
            ),
          ),
          const Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
                title: const Text("whatsapp videos"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G4.jpeg")),
                trailing: Icon(Icons.image)),
          ),
          const Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
              title: Text("instagram"),
              subtitle: Text("description"),
              leading: CircleAvatar(
                  backgroundImage: const AssetImage("assets/IMAGES/G5.jpeg")),
              trailing: const Icon(Icons.image),),
          ),
        ]),
      ),
    );
  }
}
