import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  var _username = new TextEditingController(); //初始化时给表单赋值
  
  @override
  void initState() { 
    super.initState();
    this._username.text='初始值';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldPage'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        // child: TextDemo()
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入内容',
                border: OutlineInputBorder()
              ),
              controller: this._username,
              onChanged: (value) {
                setState(() {
                  this._username.text = value;
                });
              }
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  print(this._username.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
              )
            )
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: '请输入内容',
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: '多行文本框',
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '密码框',
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            // hintText: '请输入内容',
            border: OutlineInputBorder(),
            labelText: '用户名'
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: '请输入内容',
            border: OutlineInputBorder()
          ),
        )
      ],
    );
  }
}