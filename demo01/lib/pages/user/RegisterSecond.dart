import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册页面2')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('注册页面2'),
            RaisedButton(
              child: Text('下一步'),
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/registerThird');
                Navigator.pushNamed(context, '/registerThird');
              }
            )
          ],
        ),
      )
    );
  }
}