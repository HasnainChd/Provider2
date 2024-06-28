import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/provider/counter_provider.dart';

class CounterScreen2 extends StatelessWidget {
  const CounterScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(
          child: Text('Screen-2',style: TextStyle(color: Colors.white),),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
            Text(
              counterProvider.counter.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            )
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
            counterProvider.decrement();
          },child: const  Icon(Icons.remove),),

          const SizedBox(width: 15,),

          FloatingActionButton(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: (){
            counterProvider.increment();
          },child: const Icon(Icons.add),)

        ],
      ),
    );
  }
}
