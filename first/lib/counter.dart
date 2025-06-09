import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Counter Value: $_counter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Increment counter logic here
                _incrementCounter();
              },
              child: const Text("Increment"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Decrement counter logic here
                _decrementCounter();
              },
              child: const Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
