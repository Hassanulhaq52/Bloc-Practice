import 'package:bloc_practice/authentication_bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationDataScreen extends StatelessWidget {
  const AuthenticationDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      final authBloc = context.read<AuthenticationBloc>();
      return Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Name: ${state.name}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Email: ${state.email}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password: ${state.password}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    authBloc.add(OnAddButtonPressed());
                  },
                  child: const Text(
                    'ADD',
                  ))
            ],
          ),
        ),
      );
    });
  }
}
