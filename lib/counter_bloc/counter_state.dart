part of 'counter_bloc.dart';

class CounterState {
  CounterState({
    required this.num1,
    required this.num2,
    required this.count,
  });

  final dynamic num1;
  final dynamic num2;
  final dynamic count;

  factory CounterState.initial() {
    return CounterState(num1: 0, num2: 0, count: 0);
  }

  CounterState copyWith({dynamic num1, dynamic num2, dynamic count}) {
    return CounterState(
        num1: num1 ?? this.num1,
        num2: num2 ?? this.num2,
        count: count ?? this.count);
  }
}
