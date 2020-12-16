class CounterRepository {
  static CounterRepository instance = CounterRepository();

  int counterValue = 0;

  incrementCounter() {
    counterValue++;
  }

  decrementCounter() {
    counterValue--;
  }
}
