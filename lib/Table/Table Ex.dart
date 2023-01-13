import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyTable(),
  ));
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          decoration: BoxDecoration(border: Border.all(width: 6)),
          columns: const [
            DataColumn(label: Text("id")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Jishnu")),
              DataCell(Text("20"))
            ]),
            DataRow(cells: [
              DataCell(Text("2")),
              DataCell(Text("Arjun")),
              DataCell(Text("21"))
            ]),
            DataRow(cells: [
              DataCell(Text("3")),
              DataCell(Text("Ullas")),
              DataCell(Text("22"))
            ])
          ],
        ),
      ),
    );
  }
}
