import 'package:flutter/material.dart';
import 'SignUpBilal.dart'; // Import the SignUp screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',  // Initial route to home screen
      routes: {
        '/': (context) => const HomeScreen(),  // Home screen route
        '/signup': (context) => const SignUp(),  // Sign up screen route
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signup');  // Navigate to Sign Up screen
          },
          child: const Text('Go to Sign Up'),
        ),
      ),
    );
  }
}
