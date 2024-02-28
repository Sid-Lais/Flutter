import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: Container(
          child: Column(
            children: [
              const Text(
                'flutter!',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'Enter your name'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
