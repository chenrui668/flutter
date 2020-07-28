import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  List<Widget> _getdata() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i ++) {
      list.add(
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          // alignment: Alignment.center,
          child: Text(
            "这是第${i + 1}个盒子"
          ),
          color: Colors.blue,
        )
      );
    }
    return list;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    // return ListView(
    //   children: <Widget>[
    //     ListTile(
    //       title: Text(
    //         "这是一个列表",
    //         style: TextStyle(
    //           color: Colors.blue,
    //           fontSize: 30
    //         ),
    //       ),
    //     )
    //   ],
    // );
    // return GridView.count(
    //   crossAxisCount: 3,
    //   crossAxisSpacing: 20,
    //   mainAxisSpacing: 20,
    //   childAspectRatio: 0.8,
    //   padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
    //   children: this._getdata()
    // );
    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20
      ),
      itemCount: 20, 
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          // alignment: Alignment.center,
          child: Text(
            "这是第${index + 1}个盒子"
          ),
          color: Colors.blue
        );
      }
    );
  }
}