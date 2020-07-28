import 'package:flutter/material.dart';

import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, 
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(text: '推荐'),
                    Tab(text: '热门'),
                    Tab(text: '推荐'),
                    Tab(text: '热门'),
                    Tab(text: '热门'),
                    Tab(text: '推荐'),
                    Tab(text: '热门'),
                  ],
                )
              )
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("跳转到表单页面"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form');
                    }
                  )
                ],
              ),
            ),
            Container(
              child: Text('1'),
            ),
            Container(
              child: Text('2'),
            ),
            Container(
              child: Text('3'),
            ),
            Container(
              child: Text('1'),
            ),
            Container(
              child: Text('2'),
            ),
            Container(
              child: Text('3'),
            )
          ],
        ),
      )
    );
  }
}