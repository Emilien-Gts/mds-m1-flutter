import 'package:flutter/material.dart';

class ExpandDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expanded Demo'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepPurpleAccent.withOpacity(0.3),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.grey.withOpacity(0.3),
                child: Column(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Spacer(),
                          Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.red,
                              )),
                          Spacer(),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green.withOpacity(0.3),
              ),
            )
          ],
        ));
  }
}
