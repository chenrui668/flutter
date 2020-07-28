import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute
    );
  }
}
