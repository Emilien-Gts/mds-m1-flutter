import 'package:flutter/material.dart';
import 'package:vegetables/model/vegetable_model.dart';

class VegetableApi {
  static Future<List<Vegetable>> getvegetables() async {
    await Future.delayed(Duration(seconds: 3));

    List<Vegetable> _vegetables;

    _vegetables = [];
    _vegetables.add(Vegetable('Carotte', 1.0, Colors.orange));
    _vegetables.add(Vegetable('Aubergine', 2.0, Colors.deepPurple));
    _vegetables.add(Vegetable('Michael Schumacher ', 20000.0, Colors.red));

    return _vegetables;
  }
}