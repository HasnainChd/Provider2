import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/Screens/counter_screen2.dart';
import 'package:state_management1/provider/counter_provider.dart';

class CounterDisplayScreen extends StatelessWidget {
  const CounterDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(
          child: Text(
            'Counter App',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed this button : ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Consumer<CounterProvider>(builder: (context, value, child) {
              return Text(
                '${value.counter} times',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CounterScreen2()));
                },
                child: const Text('Next Screen'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: () {
              context.read<CounterProvider>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
