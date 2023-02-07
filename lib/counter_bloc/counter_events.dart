part of 'counter_bloc.dart';

abstract class CounterEvent {}

class OnIncrementCounter extends CounterEvent {

  OnIncrementCounter({required this.num1, required this.num2});

  final int num1;
  final int num2;
}

class OnDecrementCounter extends CounterEvent {

  OnDecrementCounter({required this.num1, required this.num2});

  final int num1;
  final int num2;

}

class OnMultiplicationCounter extends CounterEvent {

  OnMultiplicationCounter({required this.num1, required this.num2});

  final int num1;
  final int num2;
}

class OnDivisionCounter extends CounterEvent {

  OnDivisionCounter({required this.num1, required this.num2});

  final int num1;
  final int num2;

}

class OnChangeText1 extends CounterEvent {
  OnChangeText1({required this.num1});

  final int num1;
}

class OnChangeText2 extends CounterEvent {
  OnChangeText2({required this.num2});

  final int num2;
}
