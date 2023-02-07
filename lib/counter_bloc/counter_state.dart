part of 'counter_bloc.dart';

class CounterState {
  CounterState({
    required this.count,
    required this.num1,
    required this.num2,
  });

  final dynamic count;
  final int num1;
  final int num2;

  factory CounterState.initial() {
    return CounterState(count: 0, num1: 0, num2: 0);
  }

  CounterState copyWith({dynamic count, int? num1, int? num2}) {
    return CounterState(count: count ?? this.count, num1: num1 ?? this.num1, num2: num2 ?? this.num2);
  }
}
