// main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart'; // Import the CartProvider class
import 'product_listing_screen.dart'; // Import the ProductListingScreen class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          CartProvider(), // Provide an instance of CartProvider
      child: MaterialApp(
        title: 'Shopping Cart',
        home: ProductListingScreen(),
      ),
    );
  }
}
