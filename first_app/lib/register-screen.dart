import 'package:first_app/menu-drawer.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
        ),
        drawer: MenuDrawer(),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            Text(
              'Item 1',
              style: TextStyle(color: Colors.brown),
            ),
            Text(
              'Item 2',
              style: TextStyle(color: Colors.brown),
            ),
            Text(
              'Item 3',
              style: TextStyle(color: Colors.brown),
            ),
            Text(
              'Item 4',
              style: TextStyle(color: Colors.brown),
            ),
            Text(
              'Item 5',
              style: TextStyle(color: Colors.brown),
            ),
            Text(
              'Item 6',
              style: TextStyle(color: Colors.brown),
            )
          ],
        ),
      ),
    );
  }
}
