import 'package:flutter/material.dart';

class PaddingDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align demo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 25.0,
                height: 25.0,
                color: Colors.yellow,
              ),
              Container(
                width: 25.0,
                height: 25.0,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
