import 'package:bloc_demo/bloc/counter/counter_bloc.dart';
import 'package:bloc_demo/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          String text = '';

          if (state is CounterStateUninitialized) {
            text = 'No data yet';
          } else if (state is CounterStateWithValue) {
            text = 'Counter value is' + state.value.toString();
          }

          return Text(text);
        })
      ],
    );
  }
}
