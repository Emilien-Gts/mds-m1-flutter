import 'package:flutter/material.dart';
import 'package:provider_demo/page/home/widget/counter_action.dart';
import 'package:provider_demo/page/home/widget/counter_info.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emilien Gantois - M1'),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterInfo(),
                Container(
                  height: 21.0,
                ),
                CounterAction(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
