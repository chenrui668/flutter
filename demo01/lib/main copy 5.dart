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
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.orange,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.green,
          )
        ],
      )
    );
  }
}