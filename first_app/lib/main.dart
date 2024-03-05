import 'package:first_app/menu-drawer.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_social_button/flutter_social_button.dart';

// import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Flutter App'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(Icons.access_alarms),
            )
          ],
        ),
        drawer: const MenuDrawer(),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
        ]),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Hello Flutter!',
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    'https://images.pexels.com/photos/13246954/pexels-photo-13246954.jpeg',
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/pexels-1.jpg',
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Enter your name'),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration:
                        InputDecoration(labelText: 'Enter your Password'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //     FlutterSocialButton(
                  //       onTap: () {},
                  //       buttonType: ButtonType.facebook, // Button type for different type buttons
                  // ),

                  // FlutterSocialButton(
                  //   onTap: () {},
                  //   buttonType: ButtonType.google,
                  //   iconColor: Colors.black,
                  // ),
                  const SizedBox(
                    height: 2,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Click Me!')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}







/* ....

return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Flutter App'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.account_circle),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hello Flutter!',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Image.network(
                    'https://images.pexels.com/photos/13246954/pexels-photo-13246954.jpeg',
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/pexels-1.jpg',
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter your name'),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration:
                        InputDecoration(labelText: 'Enter your Password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Click Me!'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
...*/