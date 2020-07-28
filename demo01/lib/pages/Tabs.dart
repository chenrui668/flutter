import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;

  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo')
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ]
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    // child: DrawerHeader(
                    //   child: Text('你好flutter')
                    // )
                    child: UserAccountsDrawerHeader(
                      accountName: Text('你好flutter'),
                      accountEmail: Text('12333'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('images/2.0x/1.jpg'),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/2.0x/1.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                      otherAccountsPictures: <Widget>[
                        Image.asset('images/2.0x/1.jpg')
                      ],
                    ),
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('我的空间'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text('用户中心'),
                onTap: () {
                  Navigator.of(context).pop(); //隐藏侧边栏
                  Navigator.pushNamed(context, '/user');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('设置中心')
              )
            ],
          )
        ),
      );
  }
}