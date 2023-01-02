import 'package:flutter/material.dart';
import 'package:luminarproject/Gridview/grid%20with%20count.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.greenAccent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Jishnu Sabu"),
                accountEmail: const Text("jishnu@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("Current Profile");
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G1.jpg"),
                  ),
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGITl3Y3hHbf7_y7KckvEMmcZzq-VENt-4Gg&usqp=CAU"))),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G2.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/IMAGES/G4.jpeg"),
                  ),
                ],
              ),
               ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: (){ Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridCount()));},
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
