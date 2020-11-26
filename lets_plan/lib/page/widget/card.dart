import 'package:flutter/material.dart';
import 'package:lets_plan/style/card.dart';

class CardWidget extends StatelessWidget {
  Icon _icon;
  String _title;
  String _subtitle;

  CardWidget(this._icon, this._title, this._subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
            left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
            right: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
            bottom: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.2)),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0)
        ),
        margin: const EdgeInsets.only(right: 15.0),
        width: 130,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              this._icon,
              SizedBox(   //Use of SizedBox
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(this._title, style: title,),
                  Text(this._subtitle, style: subtitle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
