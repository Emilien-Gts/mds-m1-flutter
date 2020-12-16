import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/counter_model.dart';
import 'package:provider_demo/page/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => CounterModel(),
        child: HomePage(),
      ),
    );
  }
}
