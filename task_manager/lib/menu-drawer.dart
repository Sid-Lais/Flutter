import 'package:flutter/material.dart';
import 'package:task_manager/categories.dart';
import 'package:task_manager/main.dart';
import 'package:task_manager/settings.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 100, // Adjust the height as needed
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.checklist, // Change to the chosen icon
                    size: 30, // Adjust the size as needed
                    color: Colors.white, // Adjust the color as needed
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20, // Adjust the font size as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Navigate to settings screen
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          ListTile(
            title: const Text('Categories'),
            onTap: () {
              // Navigate to categories screen
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Categories()));
            },
          ),
        ],
      ),
    );
  }
}
