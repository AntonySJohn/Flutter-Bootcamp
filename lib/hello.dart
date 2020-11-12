import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.green,
      body: Text('HELLO WORLD'),
    );
  }
}
