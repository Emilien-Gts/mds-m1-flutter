import 'package:flutter/material.dart';

class AButton extends StatefulWidget {
  final String title;
  final Function callback;

  AButton(this.title, this.callback);

  @override
  _AButtonState createState() => _AButtonState();
}

class _AButtonState extends State<AButton> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 48.0,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ),
      onTapDown: (value) {
        setState(() {
          _color = Colors.blue.withOpacity(0.8);
        });
      },
      onTapUp: (value) {
        setState(() {
          _color = Colors.blue;
        });
        widget.callback();
      },
      onTapCancel: () {
        setState(() {
          _color = Colors.blue;
        });
      },
    );
  }
}
