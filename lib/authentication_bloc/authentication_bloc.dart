import 'package:bloc/bloc.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<OnChangeName>((event, emit) {
      emit(state.copyWith(name: event.name));
    });
    on<OnChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<OnChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<OnAddButtonPressed>((event, emit) {

      emit(state.copyWith(name: state.name + state.email));

    });
  }
}
