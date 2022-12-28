import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Gallery"),
      ),
      body: ListView(
        children: const [
          Card(
            color: Colors.greenAccent,
           elevation: 5.0,
            child: ListTile(
                title: Text("All photos"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G1.jpg")),
                trailing: Icon(Icons.image)),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
              title: Text("whatsapp images"),
              subtitle: Text("description"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/IMAGES/G2.jpg")),
              trailing: Icon(Icons.image),
            ),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
                title: Text("whatsapp videos"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G4.jpeg")),
                trailing: Icon(Icons.image)),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5.0,
            child: ListTile(
                title: Text("instagram"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G5.jpeg")),
                trailing: Icon(Icons.image),),
          ),
        ],
      ),
    );
  }
}
