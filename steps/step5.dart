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
          color: Colors.white,
          child: Text("Hello World!"),
        )
      ),
    );
  }
}
