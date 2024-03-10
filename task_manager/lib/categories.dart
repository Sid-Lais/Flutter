import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('Work'),
            onTap: () {
              // Handle category selection for 'Work'
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Personal'),
            onTap: () {
              // Handle category selection for 'Personal'
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Shopping'),
            onTap: () {
              // Handle category selection for 'Shopping'
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Health'),
            onTap: () {
              // Handle category selection for 'Health'
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
