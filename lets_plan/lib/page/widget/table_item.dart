import 'package:flutter/material.dart';

class TableItem extends StatelessWidget {
  Color _color;
  String _text;
  String _hour;

  TableItem(this._color, this._text, this._hour);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
            left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
            right: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
            bottom: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: this._color,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(this._text)
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text(this._hour),
                    Icon(
                      Icons.arrow_right
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
