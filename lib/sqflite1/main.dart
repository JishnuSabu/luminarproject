import 'package:flutter/material.dart';
import 'package:luminarproject/sqflite1/sgfOperation.dart';

void main() {
  runApp(MaterialApp(
    home: HomeStorage(),
  ));
}

class HomeStorage extends StatefulWidget {
  @override
  State<HomeStorage> createState() => _HomeStorageState();
}

class _HomeStorageState extends State<HomeStorage> {
  bool isloading = true;
  List<Map<String, dynamic>> datas = [];

  void fetcheddata() async {
    final data = await SqlHelper.getItems();
    setState(() {
      datas = data;
      if (data != null) isloading = false;
    });
  }

  @override
  void initState() {
    fetcheddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sgflite Demo"),
      ),
      body: isloading
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemBuilder: (context, index) {
                return  Card(
                  child: ListTile(
                    title: Text(datas[index]["title"]),
                    subtitle: Text(),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: Icon(Icons.add),
      ),
    );
  }

  final titlecontroller = TextEditingController();
  final decriptioncontroller = TextEditingController();

  void showform(int? id) async {
    if (id != null) {
      final existing_data = datas.firstWhere((element) => element[id] == id);
      titlecontroller.text = existing_data["title"];
      decriptioncontroller.text = existing_data["decription"];
    }
    showModalBottomSheet(context: context,elevation: 5,isScrollControlled: true, builder: (context)=>Container(
      padding: EdgeInsets.only(
      ),
    ));
  }
}
