import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List screen = [
    const Text("home"),
    const Text("Favorites"),
    const Text("user"),
    const Text("search")
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
          onTap:(tapindex){
          setState(() {
            index = tapindex;
          });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp)),
        BottomNavigationBarItem(icon: Icon(Icons.search)),
      ]),
      body: screen[index],
    );
  }
}
