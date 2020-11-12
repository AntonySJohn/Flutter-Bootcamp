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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color = [Colors.green, Colors.red, Colors.blue, Colors.pink];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color[index],
      body: Row(
        children: [
          Text(
            'HELLO WORLD',
            style: TextStyle(fontSize: 18),
          ),
          FlatButton(
              color: Colors.grey,
              onPressed: () {
                if (index == 3) {
                  setState(() {
                    index = 0;
                  });
                } else {
                  setState(() {
                    index++;
                  });
                }
              },
              child: Text(
                "ChangeColor",
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
