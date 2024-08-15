import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailc = TextEditingController();
  final TextEditingController _passc = TextEditingController();
  final TextEditingController _confirmpassc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Container(
        color: Colors.black, // Set background color to black
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: _emailc,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.green), // Set label color to green
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  } else if (!value.contains("@") && !value.contains(".com")) {
                    return "Enter a valid email";
                  } else if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                      .hasMatch(value)) {
                    return "Please enter a valid email";
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passc,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.blue), // Set label color to blue
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _confirmpassc,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.orange), // Set label color to orange
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.length < 8) {
                    return "Password must be at least 8 characters";
                  } else if (value != _passc.text) {
                    return "Passwords do not match";
                  }
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Submitted.")),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
