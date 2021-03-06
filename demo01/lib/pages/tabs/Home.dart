import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {"id": 1});
            }
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text("跳转到商品页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            }
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text("跳转到AppBarDemo"),
            onPressed: () {
              Navigator.pushNamed(context, '/appBarDemo');
            }
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text("跳转到TabbarController"),
            onPressed: () {
              Navigator.pushNamed(context, '/tabbarController');
            }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("TextField"),
                onPressed: () {
                  Navigator.pushNamed(context, '/textField');
                }
              ),
              RaisedButton(
                child: Text("Radio"),
                onPressed: () {
                  Navigator.pushNamed(context, '/radio');
                }
              ),
              RaisedButton(
                child: Text("CheckBox"),
                onPressed: () {
                  Navigator.pushNamed(context, '/checkBox');
                }
              ),
            ],
          )
        ],
      ),
    );
  }
}