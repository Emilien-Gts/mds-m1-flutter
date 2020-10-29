import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class MyLittleSquare extends StatefulWidget {
  final Color initialColor;

  MyLittleSquare(this.initialColor);

  @override
  _MyLittleSquareState createState() => _MyLittleSquareState(this.initialColor);
}

class _MyLittleSquareState extends State<MyLittleSquare> {
  Color _currentColor;
  int _count = 0;
  RandomColor randomColor = RandomColor();

  _MyLittleSquareState(this._currentColor);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: this._currentColor,
        child: Center(
          child: Text(
            _count.toString(),
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
      onTap: _onWidgetTap,
    );
  }

  _onWidgetTap() {
    print('Widget tapped');

    setState(() {
      _count++;
      _currentColor = randomColor.randomColor();
    });
  }
}
