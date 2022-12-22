import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPagesState();
}

class _LoginPagesState extends State {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "user name",
                  hintText: "Enter username",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                textInputAction: TextInputAction.next,
               //
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(decoration: InputDecoration(
                labelText: "password",
                hintText: "Enter password",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
                textInputAction: TextInputAction.next,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
