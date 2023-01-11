import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AlertWithBackpress(),
  ));
}

class AlertWithBackpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context,
          builder: (context) =>
              AlertDialog(title: Text("Exit!!"), content: Text("Do you want to exit"),
              actions: [
                ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text("No"),),
                ElevatedButton(onPressed: (){Navigator.of(context).pop(true);}, child: Text("Yes"),)
              ],));
    }
    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alert"),
        ),
        body: const Center(
          child: Text("Press back button to exit"),
        ),
      ),
    );
  }


}
