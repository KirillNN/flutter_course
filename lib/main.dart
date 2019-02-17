import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './pages/product_admin.dart';
import './pages/products.dart';

void main() {
  debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },
    );
  }
}
