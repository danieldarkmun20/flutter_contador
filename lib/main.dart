import 'package:flutter/material.dart';
import 'package:hello_world_02/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
    );
  }
}
