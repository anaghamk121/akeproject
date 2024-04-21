import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';
import '../model/wishlist model.dart';
import 'main_screen.dart';

class PlantDetailsPage extends StatelessWidget {
  final Plant plant;
  final Plant cartplant;

  const PlantDetailsPage({super.key, required this.plant, required this.cartplant});

  @override
  Widget build(BuildContext context) {
    var wishlistProvider =
        Provider.of<WishlistProvider>(context, listen: false);
    var cartProvider = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              wishlistProvider.addToWishlist(plant);
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to wishlist')));
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              cartProvider.addToCart(cartplant);
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Added to cart")));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              plant.imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              plant.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
