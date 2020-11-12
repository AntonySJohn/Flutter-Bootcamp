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
        title: Text('Hello World'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Name: John Doe',
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Phone: +91-9876543210',
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Email: johndoe@gmail.com',
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
