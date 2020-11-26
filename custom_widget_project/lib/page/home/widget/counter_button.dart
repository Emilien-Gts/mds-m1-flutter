import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  final Function onPressed;
  CounterButton(this.onPressed);

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

Color _backgroundColor = Colors.blue;

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: 56.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _backgroundColor,
      ),
      child: Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      onTapDown: (detail) {
        _changeBackgroundColor(Colors.blue.withAlpha(200));
      },
      onTapUp: (detail) {
        _changeBackgroundColor(Colors.blue);
        widget.onPressed();
      },
      onTapCancel: () {
        _changeBackgroundColor(Colors.blue);
      },
    );
  }
}

_changeBackgroundColor(Color color) {
  setState() {
    _backgroundColor = color;
  }
}
