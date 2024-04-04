// cart_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'product.dart'; // Import the Product class

// CartProvider class manages the state of the shopping cart
class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = []; // List to store cart items

  // Getter to retrieve the current cart items
  List<Product> get cartItems => _cartItems;

  // Method to add a product to the cart
  void addToCart(Product product) {
    final existingIndex =
        _cartItems.indexWhere((item) => item.name == product.name);
    if (existingIndex >= 0) {
      // If product already exists in cart, increase its quantity
      _cartItems[existingIndex].quantity++;
    } else {
      // If product doesn't exist in cart, add it with quantity 1
      _cartItems
          .add(Product(name: product.name, price: product.price, quantity: 1));
    }
    notifyListeners(); // Notify listeners of changes to update UI
  }

  // Method to update the quantity of a product in the cart
  void updateQuantity(String productName, int newQuantity) {
    final productIndex =
        _cartItems.indexWhere((item) => item.name == productName);
    if (productIndex >= 0) {
      // If product exists in cart, update its quantity
      _cartItems[productIndex].quantity = newQuantity;
      notifyListeners(); // Notify listeners of changes to update UI
    }
  }

  // Method to remove a product from the cart
  void removeFromCart(String productName) {
    _cartItems.removeWhere((item) => item.name == productName);
    notifyListeners(); // Notify listeners of changes to update UI
  }

  // Method to calculate the total price of all items in the cart
  double getTotalPrice() {
    return _cartItems.fold(
        0, (total, item) => total + (item.price * item.quantity));
  }
}
