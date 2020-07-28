import 'package:flutter/material.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Tabs.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabbarController.dart';
import '../pages/User.dart';


final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/form': (context, {arguments}) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/product': (context, {arguments}) => ProductPage(),
  '/productInfo': (context, {arguments}) => ProductInfo(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),  
  '/registerSecond': (context) => RegisterSecondPage(),  
  '/registerThird': (context) => RegisterThirdPage(),  
  '/appBarDemo': (context) => AppBarDemoPage(),  
  '/tabbarController': (context) => TabbarControllerPage(),  
  '/user': (context) => UserPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder =  routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context) 
      );
      return route;
    }
  }
};