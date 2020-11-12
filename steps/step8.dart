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
            Image.asset(
              'images/account.png',
              height: 160,
              fit: BoxFit.fitHeight,
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Name: John Doe',
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Phone: +91-9876543210',
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: ListTile(
                leading: Icon(Icons.email),
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
