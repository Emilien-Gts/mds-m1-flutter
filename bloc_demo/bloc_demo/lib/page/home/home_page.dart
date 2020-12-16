import 'package:bloc_demo/page/home/widget/counter_action.dart';
import 'package:bloc_demo/page/home/widget/counter_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gantois Emilien - Bloc Demo'),
      ),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterInfo(),
              Container(
                height: 21.0,
              ),
              CounterAction()
            ],
          )
        ],
      ),
    );
  }
}
