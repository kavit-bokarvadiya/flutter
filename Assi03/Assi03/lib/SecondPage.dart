import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: const Text(
          "Welcome to the Second Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
