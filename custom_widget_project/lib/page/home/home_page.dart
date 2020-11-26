import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Integer _countValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget Example')
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: CounterButton(_onButtonPressed)
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('Counter: $_countValue'),
              ),
            ),
          ),
        ],
      )
    );
  }

  _onButtonPressed() {
    print('Button pressed');
    setState(() {
      this._countValue++;
    });
  }
}
