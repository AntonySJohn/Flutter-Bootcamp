import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeWidget()
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var color = [Colors.green, Colors.red, Colors.blue, Colors.pink];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.navigation,
          ),
          onPressed: (){
            if(index == 3){
              setState((){
                index = 0;
              });
            }
            else{
              setState((){
                index++;
              });
            }
          }
      ),
      backgroundColor: color[index],
      body: Center(
          child: Column(
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://tse4.mm.bing.net/th?id=OIP.GP4CFps8vTVc5SYslNumnQHaHa&pid=Api&P=0&w=300&h=300"
                  ),
                  radius: 50,
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                      ),
                      title: Text("John Doe")
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.android,
                    ),
                    title: Text("Flutter Developer"),
                  ),
                ),
              ]
          )
      ),
    );
  }
}