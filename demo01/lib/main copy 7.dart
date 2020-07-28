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

  List list = new List();
  HomeContent () {
    for (var i = 0; i < 20; i ++) {
      this.list.add('我是第${i + 1}个列表');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(this.list[index]),
        ); 
      }
    );
  }
}