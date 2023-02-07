import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<OnIncrementCounter>((event, emit) {
      emit(state.copyWith(count: event.num1 + event.num2));
    });

    on<OnDecrementCounter>((event, emit) {
      emit(state.copyWith(count: event.num1 - event.num2));
    });

    on<OnMultiplicationCounter>((event, emit) {
      emit(state.copyWith(count: event.num1 * event.num2));
    });

    on<OnDivisionCounter>((event, emit) {
      emit(state.copyWith(count: event.num1 / event.num2));
    });

    on<OnChangeText1>((event, emit) {
      emit(state.copyWith(num1: event.num1));
    });

    on<OnChangeText2>((event, emit) {
      emit(state.copyWith(num2: event.num2));
    });
  }
}
