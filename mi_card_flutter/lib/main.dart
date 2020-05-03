import 'package:flutter/material.dart';

void main() {
  runApp(CardApp());
}

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          verticalDirection: VerticalDirection.up,
//          mainAxisSize: MainAxisSize.min,

          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profile_pic.jpeg'),
            ),
            Text(
              'Pritam Sukumar',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                  color: Colors.white),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 3.5,
                  fontFamily: 'Raleway',
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.blueGrey),
                title: Text("+91 9740769616",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Raleway',
                        fontSize: 20)),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blueGrey),
                title: Text("pritamps@gmail.com",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Raleway',
                        fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
