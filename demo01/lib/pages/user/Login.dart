import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录页面')
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('这是一个登录页面'),
              RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              )
            ],
          ),
        )
      ),
    );
  }
}