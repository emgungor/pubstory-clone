import 'package:flutter/material.dart';
import 'homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}
