import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/counter_model.dart';

class CounterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<CounterModel>(builder: (context, model, child) {
          return Text('Counter value:' + model.value.toString());
        })
      ],
    );
  }
}
