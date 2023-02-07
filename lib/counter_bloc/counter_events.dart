part of 'counter_bloc.dart';

abstract class CounterEvent {}

class OnIncrementCounter extends CounterEvent {}

class OnDecrementCounter extends CounterEvent {}

class OnMultiplicationCounter extends CounterEvent {}

class OnDivisionCounter extends CounterEvent {}

class OnTextChange extends CounterEvent {
  final String text;

  OnTextChange({required this.text});
}
