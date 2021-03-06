import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到登录页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('跳转到注册页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/registerFirst');
            }
          )
        ],
       )
    );
  }
}