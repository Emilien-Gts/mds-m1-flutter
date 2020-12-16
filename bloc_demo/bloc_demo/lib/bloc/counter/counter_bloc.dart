import 'package:bloc_demo/bloc/counter/counter_event.dart';
import 'package:bloc_demo/bloc/counter/counter_state.dart';
import 'package:bloc_demo/repository/counter_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateUninitialized());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    var counterRepo = CounterRepository.instance;

    if (event is CounterEventIncrement) {
      counterRepo.incrementCounter();
    } else if (event is CounterEventDecrement) {
      counterRepo.decrementCounter();
    }

    yield CounterStateWithValue(counterRepo.counterValue);
  }
}
