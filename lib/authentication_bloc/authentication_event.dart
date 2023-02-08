part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {}

class OnChangeName extends AuthenticationEvent {
  OnChangeName({required this.name});
  final String name;
}

class OnChangeEmail extends AuthenticationEvent {
  OnChangeEmail({required this.email});

  final String email;
}

class OnChangePassword extends AuthenticationEvent {
  OnChangePassword({required this.password});

  final String password;
}

class OnAddButtonPressed extends AuthenticationEvent {}
