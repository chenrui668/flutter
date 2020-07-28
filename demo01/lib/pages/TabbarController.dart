import 'package:flutter/material.dart';

class TabbarControllerPage extends StatefulWidget {
  TabbarControllerPage({Key key}) : super(key: key);

  @override
  _TabbarControllerPageState createState() => _TabbarControllerPageState();
}

class _TabbarControllerPageState extends State<TabbarControllerPage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() { //生命周期
    super.initState();
    this._tabController = new TabController(length: 2, vsync: this);
    this._tabController.addListener(() { 
      print(this._tabController.index);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemoPage'),
          centerTitle: true,
          bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐')
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Container(
              child: Text('热门'),
            ),
            Container(
              child: Text('推荐'),
            )
          ]
        )
      );
  }
}