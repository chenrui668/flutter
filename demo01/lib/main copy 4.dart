import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo')
        ),
        body: HomeContent()
      ),
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
    );
  }

}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          // leading: Icon(Icons.settings, size: 30, color: Colors.blue,),
          leading: Image.asset('images/2.0x/1.jpg'),
          title: Text(
            '这是一段文字',
            style: TextStyle(
              fontSize: 20, 
            )
          ),
          subtitle: Text(
            '这是二级标题',
            style: TextStyle(
              fontSize: 16
            ),
          ),
          trailing: Icon(Icons.settings),
        )
      ],
    );
  }
}