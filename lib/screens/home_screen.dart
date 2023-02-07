import 'package:bloc_practice/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

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
                        context
                            .read<CounterBloc>()
                            .add(OnMultiplicationCounter(

                            num1: int.parse(text1.text),
                            num2: int.parse(text2.text)

                        ));
                      },
                      child: const Text('*'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnIncrementCounter(
                            num1: int.parse(text1.text),
                            num2: int.parse(text2.text)));
                      },
                      child: const Text('+'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${state.count}',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnDecrementCounter(

                            num1: int.parse(text1.text),
                            num2: int.parse(text2.text)

                        ));
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnDivisionCounter(

                            num1: int.parse(text1.text),
                            num2: int.parse(text2.text)

                        ));
                      },
                      child: const Text('/'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 25,
                    bottom: 5,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    // onChanged: (number) {
                    //   context.read<CounterBloc>().add(OnChangeText1(num1: number ));
                    // },
                    controller: text1,
                    decoration: InputDecoration(
                      hintText: 'Enter Number 1',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                // Text(
                //   '${state.num1}',
                //   style: const TextStyle(
                //     color: Colors.black,
                //     fontSize: 25,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 25,
                    bottom: 5,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    // onChanged: (value) {
                    //   context.read<CounterBloc>().add(OnChangeText2(num2: value));
                    // },
                    controller: text2,
                    decoration: InputDecoration(
                      hintText: 'Enter Number 2',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                // Text(
                //   '${state.num2}',
                //   style: const TextStyle(
                //     color: Colors.black,
                //     fontSize: 25,
                //   ),
                // )
              ],
            ),
          ),
        );
      },
    );
  }
}
