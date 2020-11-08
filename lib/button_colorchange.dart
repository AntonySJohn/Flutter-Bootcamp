import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [Colors.green, Colors.red, Colors.white, Colors.blue];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[index],
      body: Center(
        child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              index != 3 ? setState(() => index++) : setState(() => index = 0);
            },
            child: Text('Color')),
      ),
    );
  }
}
