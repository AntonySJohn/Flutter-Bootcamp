import 'package:flutter/material.dart';
import 'package:profile/hello.dart';

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
        title: Text(
          'Hello World',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Hello())),
        backgroundColor: Colors.teal,
      ),
      body: Row(
        children: [
          Text(
            'First screen',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
