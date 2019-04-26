import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Color.fromRGBO(17, 24, 34, 100)),
        ),
        backgroundColor: Colors.yellow[600],
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(17, 24, 34, 100),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Image.asset(
                'images/lock.png',
                height: 90.0,
                width: 90.0,
              ),
            ),
            Container(
              width: 380.0,
              height: 180.0,
              color: Colors.yellow[600],
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                        hintText: 'Username', icon: Icon(Icons.person)),
                  ),
                  TextField(
                    controller: _passController,
                    decoration: InputDecoration(
                        hintText: 'Password', icon: Icon(Icons.lock)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
