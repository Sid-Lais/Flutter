import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_model.dart'; // Import the Product class
import 'cart_screen.dart'; // Import the CartScreen

class ProductListingScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', price: 10.0),
    Product(name: 'Product 2', price: 20.0),
    Product(name: 'Product 3', price: 30.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('Price: \$${product.price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Logic to add product to cart
              },
              child: Text('Add to Cart'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartScreen()),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
