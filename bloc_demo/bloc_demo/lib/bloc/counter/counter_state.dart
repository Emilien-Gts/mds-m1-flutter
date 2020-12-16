class CounterState {}

class CounterStateUninitialized extends CounterState {}

class CounterStateWithValue extends CounterState {
  final int value;

  CounterStateWithValue(this.value);
}
