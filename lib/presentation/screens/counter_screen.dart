import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  String isClick = "s";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text("Counter Screen"),
          )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$counter",
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
          ),
          Text("click${counter == 1 ? '' : 's'}", style: const TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
