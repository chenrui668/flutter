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
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
        Container(
          height: 40,
          width: 80,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("文本"),
        ),
      ],
    );
  }
}