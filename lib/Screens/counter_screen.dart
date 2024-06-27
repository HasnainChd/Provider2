import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/provider/counter_provider.dart';

class CounterDisplayScreen extends StatelessWidget {
  const CounterDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter App'),
        ),
      ),
      body:   Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have Pressed the button :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
             Consumer<CounterProvider>(builder:(context,value, child){
               return Text("${value.count} times",style: TextStyle(fontSize: 35),);
             })
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
              context.read<CounterProvider>().decrement();
          },child: const Icon(Icons.remove),),

          const SizedBox(width: 10,),

          FloatingActionButton(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: (){
              context.read<CounterProvider>().increment();
          },child: const Icon(Icons.add),)

        ],
      ),
    );
  }
}
