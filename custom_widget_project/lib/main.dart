import 'package:custom_widget_project/page/home/home_page.dart';
import 'package:custom_widget_project/style/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: HomePage(),
    );
  }
}