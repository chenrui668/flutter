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
        child: Image.asset(
          'images/2.0x/1.jpg',
          alignment: Alignment.center,
          // fit: BoxFit.cover 
        ),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.circular(150),
          // image: DecorationImage(
          //   image: AssetImage('images/2.0x/1.jpg'),
          //   fit: BoxFit.cover
          // )
        )
      )
    );
  }
}