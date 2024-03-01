import 'package:flutter/material.dart';
import 'package:hello_world_02/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red, // Define el color primario de la paleta
          // Puedes definir otros colores de la paleta aquí, como accentColor, etc.
        ),
        // Otros atributos de tu tema
      ),
      home: const CounterScreen(),
    );
  }
}
