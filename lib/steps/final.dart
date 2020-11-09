import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colors[index],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center, why this dont work
          children: [
            Center(
              // child: Image.network(
              //   'https://simpleicon.com/wp-content/uploads/account.png',
              //   height: 160,
              //   // width: 160,  // we dont do this to maintain aspect ratio
              //   fit: BoxFit.fitHeight,
              // ),
              child: Image.asset(
                'images/account.png',
                height: 160,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                width: 250,
                color: Colors.red[400],
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Name: John Doe',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Age: 54',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  index != 3
                      ? setState(() => index++)
                      : setState(() => index = 0);
                },
                child: Text('Color'),
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
