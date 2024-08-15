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
          title: const Text('Todo App'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Title 1'),
              subtitle: const Text('Subtitle 1'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.edit),
                  Icon(Icons.delete),
                ],
              ),
            ),
            ListTile(
              title: const Text('Title 2'),
              subtitle: const Text('Subtitle 2'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.edit),
                  Icon(Icons.delete),
                ],
              ),
            ),
            ListTile(
              title: const Text('Title 3'),
              subtitle: const Text('Subtitle 3'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.edit),
                  Icon(Icons.delete),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ElevatedButton(onPressed: null, child: Text('Add')),
                ElevatedButton(onPressed: null, child: Text('Remove')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
