import 'package:flutter/material.dart';
import 'package:luminarproject/Gridview/Staggered%20grid2.dart';
import 'package:luminarproject/login%20with%20validation.dart';

void main() {
  runApp(MaterialApp(
    home: MyTab(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xFF00695C)),
    ),
  ));
}

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Tab Bar"),
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("Linked devices")),
                const PopupMenuItem(child: Text("Starred messages")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.pinkAccent,
            indicatorWeight: 2,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: const Tab(
                    icon: Icon(Icons.people),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(text: "Chats")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(text: "Status")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(text: "Call")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text("Community"),
            ),
            const Center(
              child: Text("Chats"),
            ),
            LoginForm(),
            StaggeredGridView2()
          ],
        ),
      ),
    );
  }
}
