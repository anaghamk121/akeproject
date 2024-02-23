// import 'package:flutter/material.dart';
//
// class CartItemTile extends StatelessWidget {
//   final String id;
//   final String title;
//   final String scientificName;
//   final String image;
//   final String description;
//   final double price;
//   final int qty;
//
//   CartItemTile({
//     required this.id,
//     required this.title,
//     required this.scientificName,
//     required this.image,
//     required this.description,
//     required this.price,
//     required this.qty,
//     required String scientificname,
//     required String productId,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     // Implement your UI for displaying a single item in the cart here
//     return ListTile(
//       leading: Image.network(image),
//       title: Text(title),
//       subtitle: Text('Price: \$${price.toString()}'),
//       trailing: Text('Qty: $qty'),
//     );
//   }
// }




//
// import 'package:flutter/material.dart';
//
// class CartItem with ChangeNotifier  {
//   final String id;
//   final String title;
//   final String image;
//   final double price;
//   final double quantity;
//   bool iscart;
//
//   CartItem({
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.price,
//     required this.quantity,
//     this.iscart = false,
//   }
//       );
//   void toggleIsCart(){
//     iscart = !iscart;
//     notifyListeners();
//   }
//
// }

import 'package:flutter/material.dart';

class CartItem  with ChangeNotifier{
   // extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final int quantity;
  final String image;
  bool iscart;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.image,
    this.iscart = false,
  });
   void toggleIsCart() {
     iscart = !iscart;
     notifyListeners();
   }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
          title: Text(title),
          subtitle: Text('Total: \$${(price * quantity).toStringAsFixed(2)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}

