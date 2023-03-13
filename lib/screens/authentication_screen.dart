import 'package:bloc_practice/authentication_bloc/authentication_bloc.dart';
import 'package:bloc_practice/screens/auth_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);
  //
  // TextEditingController nameInput = TextEditingController();
  // TextEditingController emailInput = TextEditingController();
  // TextEditingController passwordInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      final AuthenticationBloc authBloc = context.read<AuthenticationBloc>();
      return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 5),
              child: TextField(
                onChanged: (value) {
                  authBloc.add(OnChangeName(name: value));
                },
                // controller: nameInput,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              state.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 5),
              child: TextField(
                onChanged: (value) {
                  authBloc.add(OnChangeEmail(email: value));
                },
                keyboardType: TextInputType.emailAddress,
                // controller: emailInput,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              state.email,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 5),
              child: TextField(
                onChanged: (value) {
                  authBloc.add(OnChangePassword(password: value));
                },
                keyboardType: TextInputType.visiblePassword,
                // controller: passwordInput,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              state.password,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthenticationDataScreen(),
                    ));
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      );
    });
  }
}
