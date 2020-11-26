import 'package:flutter/material.dart';
import 'package:custom_widget_project/style/colors.dart';

final ThemeData appTheme = ThemeData(
  accentColor: blue,
      textTheme: _textTheme,
);

final TextTheme _textTheme = TextTheme(
  bodyText1: TextStyle(color: grey, fontSize: 14.00),
  headline1: TextStyle(color: darkGrey, fontSize: 16.00)
);