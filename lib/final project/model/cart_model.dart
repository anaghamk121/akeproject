import 'package:flutter/cupertino.dart';
import '../screens/main_screen.dart';


class CartItem {
  final String name;
  final String description;
  final String imageUrl;

  CartItem({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

// Wishlist Provider
class CartProvider extends ChangeNotifier {
  List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(Plant plant) {
    _cartItems.add(CartItem(
      name: plant.name,
      description: plant.description,
      imageUrl: plant.imageUrl,
    ));
    notifyListeners();
  }
}
