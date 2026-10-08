import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clicCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clicCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clicCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            //Text( 'Click${clicCounter == 1 ? '' : 's'}',style: TextStyle(fontSize: 25)),
            if (clicCounter == 1)
              const Text('Click', style: TextStyle(fontSize: 25)),
            if (clicCounter != 1)
              const Text('Clicks', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              clicCounter++;
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),

          SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              clicCounter--;
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
