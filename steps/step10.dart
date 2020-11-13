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
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigation,
        ),
        onPressed: null,
      ),
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: color[index],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://tse4.mm.bing.net/th?id=OIP.GP4CFps8vTVc5SYslNumnQHaHa&pid=Api&P=0&w=300&h=300"
                ),
                radius: 50,
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  color: Colors.white,
                  child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                      ),
                      title: Text("John Doe")
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  color: Colors.white,
                  child: ListTile(
                      leading: Icon(
                        Icons.android,
                      ),
                      title: Text("Flutter Developer")
                  )
              ),
            ],
          )
      ),
    );
  }
}