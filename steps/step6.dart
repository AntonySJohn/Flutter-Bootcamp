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
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Image.asset(
          'images/account.png',
          height: 160,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
