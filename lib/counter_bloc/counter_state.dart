part of 'counter_bloc.dart';

class CounterState {
  CounterState({required this.count});

  final dynamic count;

  factory CounterState.initial() {
    return CounterState(count: 0);
  }

  CounterState copyWith(dynamic? count) {
    return CounterState(count: count ?? this.count);
  }
}
