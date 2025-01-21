import 'package:flutter/material.dart';

class Product {
  const Product({required this.name});
  final String name;
}

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem({
    required this.product,
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,  // Menambahkan bayangan untuk kartu
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.fastfood,  // Menambahkan ikon sesuai produk
            color: Colors.white,
          ),
        ),
        title: Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.add_shopping_cart),
          onPressed: () {
            // Menambahkan produk ke keranjang (logika bisa ditambahkan)
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Product added to cart')),
            );
          },
        ),
      ),
    );
  }
}
