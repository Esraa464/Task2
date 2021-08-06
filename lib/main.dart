import 'package:flutter/material.dart';
import 'package:untitled3/screens/home_page/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: HomePage(),
    );
  }
}
