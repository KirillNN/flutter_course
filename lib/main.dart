import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './pages/home.dart';

void main() {
  debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
