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
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Name",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _emailc,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  } else if (!value.contains("@") && !value.contains(".com")) {
                    return "enter a valid email";
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
                  label: Text("Password"),
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
                  label: Text("Confirm Password"),
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                  else if (value != _passc.text) {
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
