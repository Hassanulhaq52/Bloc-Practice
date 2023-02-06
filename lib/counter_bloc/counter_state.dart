part of 'counter_bloc.dart';

class CounterState {
  CounterState({required this.count});

  final int count;

  factory CounterState.initial() {
    return CounterState(count: 0);
  }

  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }
}
