import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);

  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册页面3')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('验证码'),
            RaisedButton(
              child: Text('完成'),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new Tabs(index: 1))
                  , (route) => route == null
                );
              }
            )
          ],
        )
      )
    );
  }
}