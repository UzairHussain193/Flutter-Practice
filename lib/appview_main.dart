import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App', textAlign: TextAlign.center),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Text 1'),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              const Text('Text 2'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
