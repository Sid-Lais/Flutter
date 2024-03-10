import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Receive notifications for updates'),
            onTap: () {
              // Handle tap for 'Notifications'
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Enable dark mode'),
            onTap: () {
              // Handle tap for 'Dark Mode'
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Language'),
            subtitle: const Text('Select your preferred language'),
            onTap: () {
              // Handle tap for 'Language'
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Font Size'),
            subtitle: const Text('Adjust the app\'s font size'),
            onTap: () {
              // Handle tap for 'Font Size'
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
