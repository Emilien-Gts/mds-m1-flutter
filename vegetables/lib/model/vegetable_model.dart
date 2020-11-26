import 'package:flutter/material.dart';

class Vegetable {
  String name;
  double price;
  Color color;

  Vegetable(this.name, this.price, this.color);

  @override
  String toString() {
    return 'Vegetable{name: $name, price: $price, color: $color}';
  }
}