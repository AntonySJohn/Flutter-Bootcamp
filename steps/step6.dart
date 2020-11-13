import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.green,
      body: Center(
          child: Container(
              width: 300,
              color: Colors.white,
              child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                  ),
                  title: Text("John Doe")
              )
          )
      ),
    );
  }
}
