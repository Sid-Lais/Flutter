import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String name;
  final String email;
  final int age;

  const DisplayScreen({
    Key key,
    @required this.name,
    @required this.email,
    @required this.age,
  }) : super(key: key);

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
