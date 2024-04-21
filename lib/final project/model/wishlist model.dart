import 'package:flutter/cupertino.dart';

import '../screens/main_screen.dart';


class WishlistItem {
  final String name;
  final String description;
  final String imageUrl;

  WishlistItem({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

// Wishlist Provider
class WishlistProvider extends ChangeNotifier {
  List<WishlistItem> _wishlistItems = [];

  List<WishlistItem> get wishlistItems => _wishlistItems;

  void addToWishlist(Plant plant) {
    _wishlistItems.add(WishlistItem(
      name: plant.name,
      description: plant.description,
      imageUrl: plant.imageUrl,
    ));
    notifyListeners();
  }
}
