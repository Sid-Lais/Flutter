import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  @override
  final Key key;
  final String name;
  final String email;
  final int age;

  const DisplayScreen({
    super.key,
    required this.key,
    required this.name,
    required this.email,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            const SizedBox(height: 10),
            Text('Email: $email'),
            const SizedBox(height: 10),
            Text('Age: $age'),
          ],
        ),
      ),
    );
  }
}
