import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Color.fromRGBO(17, 24, 34, 100),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            new Image.asset(
              'images/lock.png',
              height: 90.0,
              width: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
