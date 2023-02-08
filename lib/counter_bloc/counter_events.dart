part of 'counter_bloc.dart';

abstract class CounterEvent {}

class OnIncrementCounter extends CounterEvent {
  OnIncrementCounter({required this.num1, required this.num2});

  final dynamic num1;
  final dynamic num2;
}

class OnDecrementCounter extends CounterEvent {
  OnDecrementCounter({required this.num1, required this.num2});

  final dynamic num1;
  final dynamic num2;
}

class OnMultiplicationCounter extends CounterEvent {
  OnMultiplicationCounter({required this.num1, required this.num2});

  final dynamic num1;
  final dynamic num2;
}

class OnDivisionCounter extends CounterEvent {
  OnDivisionCounter({required this.num1, required this.num2});

  final dynamic num1;
  final dynamic num2;
}

class OnChangeNum1 extends CounterEvent {
  OnChangeNum1({required this.num1});

  final dynamic num1;
}

class OnChangeNum2 extends CounterEvent {
  OnChangeNum2({required this.num2});

  final dynamic num2;
}
