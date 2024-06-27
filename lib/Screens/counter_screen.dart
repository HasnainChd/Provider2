import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/provider/counter_provider.dart';

class CounterDisplayScreen extends StatelessWidget {
  const CounterDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Counter App'),
        ),
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have Pressed the button :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
             Text("0 times",style: const TextStyle(fontSize: 35),)
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: (){
          },child: const Icon(Icons.remove),),

          const SizedBox(width: 10,),

          FloatingActionButton(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: (){
          },child: const Icon(Icons.add),)

        ],
      ),
    );
  }
}
