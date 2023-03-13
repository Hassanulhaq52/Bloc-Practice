part of 'authentication_bloc.dart';

class AuthenticationState {
  AuthenticationState({
    required this.name,
    required this.email,
    required this.password,
  });

  final String name;
  final String email;
  final String password;

  factory AuthenticationState.initial() {
    return AuthenticationState(name: '', email: '', password: '');
  }

  AuthenticationState copyWith(
      {String? name, String? email, String? password}) {
    return AuthenticationState(
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password);
  }
}
