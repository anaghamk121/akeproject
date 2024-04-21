// Wishlist Page with Provider
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/wishlist model.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistProvider = Provider.of<WishlistProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: ListView.builder(
        itemCount: wishlistProvider.wishlistItems.length,
        itemBuilder: (BuildContext context, int index) {
          var item = wishlistProvider.wishlistItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(item.description),
            leading: Image.asset(
              item.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
