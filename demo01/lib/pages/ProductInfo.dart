import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  final Map arguments;
  ProductInfo({Key key, this.arguments}) : super(key: key);

  @override
  _ProductInfoState createState() => _ProductInfoState(arguments: this.arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;

  _ProductInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页面"),
      ),
      body: Container(
        child: Text("pid=${arguments["pid"]}"),
      )
    );
  }
}