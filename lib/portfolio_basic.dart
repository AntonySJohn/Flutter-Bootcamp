import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[600],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center, why this dont work
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://www.macleans.ca/wp-content/uploads/2020/09/DONALD-TRUMP-LIST-SEPT29-766x431.jpg',
                ),
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
                        'Name: Donald Trump',
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
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Designation: Ex President',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
