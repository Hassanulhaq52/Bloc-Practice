import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_practice/counter_bloc/counter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(OnIncrementCounter());
                  },
                  child: const Text(
                    '+',
                  ),
                ),
                Text('${state.count}'),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(OnDecrementCounter());
                  },
                  child: const Text(
                    '-',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
