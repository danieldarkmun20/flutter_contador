import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int counter = 0;
  String isClick = "s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("Counter Function"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$counter",
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
          ),
          Text("click${counter == 1 ? '' : 's'}",
              style: const TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        CustomButton(
          tooltip: "Increment Counter",
          icon: Icons.add,
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
            icon: Icons.remove,
            tooltip: "Decrement Counter",
            onPressed: () {
              setState(() {
                counter--;
              });
            })
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String tooltip;
  // final

  const CustomButton(
      {super.key, required this.icon, required this.tooltip, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      tooltip: tooltip,
      child: Icon(icon),
    );
  }
}
