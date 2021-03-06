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
