import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('This is the second screen.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          print("Floating Action Button Pressed");
        },
        child: Icon(Icons.add),
        tooltip: 'Add',
      ),
    );
  }
}
