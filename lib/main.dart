import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/Screens/counter_screen.dart';
import 'package:state_management1/provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  ChangeNotifierProvider(
     create: ( context) => CounterProvider(),
     child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(backgroundColor: Colors.teal)),
          home: const CounterDisplayScreen(),
           ),
   );

  }
}
