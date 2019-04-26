import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  String username = '';
  void _erase(){
    setState(() {
      _userController.clear();
      _passController.clear();

    });
  }

  void _showWelcome(){
    setState(() {
      if(_userController.text.isNotEmpty & _passController.text.isNotEmpty){
        username=_userController.text;

      }else
        username='Nothing!';

    });
  }

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
        child: ListView(
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
                      hintText: 'Username',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    controller: _passController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              // margin: const EdgeInsets.only(left: 30.0),
                              child: RaisedButton(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 17.0, color: Colors.yellow[600]),
                            ),
                            onPressed: _showWelcome,
                            color: Colors.blueGrey,
                          )),
                          Container(
                              // margin: const EdgeInsets.only(left: 120.0),
                              child: RaisedButton(
                            child: Text(
                              'Clear',
                              style: TextStyle(
                                  fontSize: 17.0, color: Colors.yellow[600]),
                            ),
                            onPressed: _erase,
                            color: Colors.blueGrey,
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome, $username',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
