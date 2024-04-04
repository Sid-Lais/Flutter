// product.dart
import 'package:flutter/foundation.dart';

// Product class represents a single product with name, price, and quantity
class Product {
  final String name; // Name of the product
  final double price; // Price of the product
  int quantity; // Quantity of the product

  // Constructor to initialize Product object
  Product({
    required this.name,
    required this.price,
    this.quantity = 0, // Default quantity = 0
  });
}
