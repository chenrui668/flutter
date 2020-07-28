import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemoPage'),
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu), 
          //   onPressed: () {
          //     print('menu');
          //   }
          // ),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search), 
          //     onPressed: () {
          //       print('search');
          //     }
          //   ),
          // ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Text('热门'),
            ),
            Container(
              child: Text('推荐'),
            )
          ]
        )
      )
    );
  }
}