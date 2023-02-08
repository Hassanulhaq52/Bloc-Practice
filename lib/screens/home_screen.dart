import 'package:bloc_practice/counter_bloc/counter_bloc.dart';
import 'package:bloc_practice/screens/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController firstNumber = TextEditingController();
  TextEditingController secondNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(OnMultiplicationCounter(
                          num1: int.parse(firstNumber.text),
                          num2: int.parse(secondNumber.text),
                        ));
                  },
                  child: const Text('×'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(OnIncrementCounter(
                          num1: int.parse(firstNumber.text),
                          num2: int.parse(secondNumber.text),
                        ));
                  },
                  child: const Text('+'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${state.count}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(OnDecrementCounter(
                          num1: int.parse(firstNumber.text),
                          num2: int.parse(secondNumber.text),
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
                          num1: int.parse(firstNumber.text),
                          num2: int.parse(secondNumber.text),
                        ));
                  },
                  child: const Text('÷'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 5),
              child: TextField(
                onChanged: (value) {
                  context
                      .read<CounterBloc>()
                      .add(OnChangeNum1(num1: firstNumber.text));
                },
                keyboardType: TextInputType.number,
                controller: firstNumber,
                decoration: InputDecoration(
                  hintText: 'Enter First Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              '${state.num1}',
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
                  context
                      .read<CounterBloc>()
                      .add(OnChangeNum2(num2: secondNumber.text));
                },
                keyboardType: TextInputType.number,
                controller: secondNumber,
                decoration: InputDecoration(
                  hintText: 'Enter Second Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              '${state.num2}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthenticationScreen(),
                    ));
              },
              child: const Text('Go to Authentication Screen'),
            ),
          ],
        ),
      );
    });
  }
}
