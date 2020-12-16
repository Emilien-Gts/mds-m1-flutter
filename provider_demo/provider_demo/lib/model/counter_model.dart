import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int value = 0;

  increment() {
    this.value--;
    notifyListeners();
  }

  decrement() {
    this.value++;
    notifyListeners();
  }
}
