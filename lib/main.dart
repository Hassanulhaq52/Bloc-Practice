import 'package:bloc_practice/authentication_bloc/authentication_bloc.dart';
import 'package:bloc_practice/counter_bloc/counter_bloc.dart';
import 'package:bloc_practice/screens/authentication_screen.dart';
import 'package:bloc_practice/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => AuthenticationBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Practice Bloc',
        home: AuthenticationScreen(),
      ),
    );
  }
}
