import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<OnIncrementCounter>((event, emit) {
      emit(state.copyWith(count: state.count + 2));
    });

    on<OnDecrementCounter>((event, emit) {
      emit(state.copyWith(count: state.count - 2));
    });

    on<OnMultiplicationCounter>((event, emit) {
      emit(state.copyWith(count: state.count * 2));
    });

    on<OnDivisionCounter>((event, emit) {
      emit(state.copyWith(count: state.count / 2));
    });

    on<OnTextChange>((event, emit) {
      emit(state.copyWith(text: event.text));
    });
  }
}
