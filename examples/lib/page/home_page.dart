import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter')),
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('This is top text !'),
              Text('This is low top text !'),
              Text('This is middle text !'),
              Text('This is low bot text !'),
              Text('This is bot text !'),
              Container(height: 12.0),
              Container(
                height: 48.0,
                width: 48.0,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
