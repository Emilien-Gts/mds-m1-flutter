import 'package:flutter/material.dart';
import 'package:vegetables/model/vegetable_model.dart';

class VegetableItem extends StatelessWidget {
  final Vegetable vegetable;
  VegetableItem(this.vegetable);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        height: 18.0,
        width: 18.0,
        decoration: BoxDecoration(
          color: vegetable.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(vegetable.name),
      subtitle: Text(vegetable.price.toString() + '€'),
      onTap: () {
        print('tapped $vegetable');
      }
    );
  }
}
