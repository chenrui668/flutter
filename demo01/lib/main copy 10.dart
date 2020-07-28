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
        primaryColor: Colors.yellow
      ),
    );
  }

}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          flex: 0,
          child: IconContainer(Icons.home, color: Colors.blue),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.search, color: Colors.orange),
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  IconContainer(this.icon, {this.size = 32, this.color = Colors.red});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      color: this.color,
      child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      ),
    );
  }
}