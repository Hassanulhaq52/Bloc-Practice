part of 'counter_bloc.dart';

class CounterState {
  CounterState({
    required this.count,
    required this.text,
  });

  final dynamic count;
  final String text;

  factory CounterState.initial() {
    return CounterState(text: '', count: 0);
  }

  CounterState copyWith({String? text, int? count}) {
    return CounterState(text: text ?? this.text, count: count ?? this.count);
  }
}
