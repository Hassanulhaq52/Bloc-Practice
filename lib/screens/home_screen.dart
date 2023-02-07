import 'package:bloc_practice/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnIncrementCounter());
                      },
                      child: const Text('+'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(OnMultiplicationCounter());
                      },
                      child: const Text('*'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('${state.count}'),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnDecrementCounter());
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnDivisionCounter());
                      },
                      child: const Text('/'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    // controller: textController,
                    onChanged: (value) {
                      context
                          .read<CounterBloc>()
                          .add(OnTextChange(text: value));
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Text(
                  state.text,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     context.read<CounterBloc>().add(OnTextChange(text: textController.text));
                //   },
                //   child: const Text('Update'),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
