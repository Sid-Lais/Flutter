import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/config/routes.dart';
import 'package:shopping_app/screens/login.dart';
import 'package:shopping_app/screens/register.dart';

void main() async {
  // ensures that widget gets loaded first and then firebase gets initialized.
  WidgetsFlutterBinding.ensureInitialized();
  // initialize the firebase --> returns a future object --> waits till the time application gets initialized.
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Login(),
    initialRoute: '/',
    routes: getRoutes(),
  ));
}
