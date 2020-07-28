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
    return Center(
      child: Container(
        child: Transform(
          transform: Matrix4.rotationZ(0),
          origin: Offset(100, 100),
          child: Container(
            child: Image.network("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2737874481,1226365123&fm=26&gp=0.jpg"),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          )
        ),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        // transform: Matrix4.rotationZ(0.3),
        alignment: Alignment.center,
      )
    );
  }
}