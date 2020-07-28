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

  List<Widget> _getData() {
    List<Widget> list = new List();

    for (var i = 0; i < 20; i ++) {
      list.add(ListTile(
        title: Text('我是第$i个列表')
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}