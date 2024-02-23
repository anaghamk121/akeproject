// import 'package:flutter/cupertino.dart';
//
//
// class Cartitem {
//   final String id;
//   final String title;
//   final String scientificname;
//   final String image;
//   final String description;
//   final double price;
//   final int qty;
//
//   Cartitem({
//     required this.id,
//     required this.title,
//     required this.scientificname,
//     required this.image,
//     required this.description,
//     required this.price,
//     required this.qty,
//   });
// }
//
// class Cart with ChangeNotifier {
//   Map<String, Cartitem> _items = {};
//
//   Map<String, Cartitem> get items {
//     return {..._items};
//   }
//
//   void additem({required String plantid, price, title}) {
//     if (_items.containsKey(plantid)) {
//       _items.update(
//           plantid,
//               (value) => Cartitem(
//               id: value.id,
//               title: value.title,
//               scientificname: value.scientificname,
//               image: value.image,
//               description: value.description,
//               price: value.price,
//               qty: value.qty + 1));
//       notifyListeners();
//     } else {
//       _items.putIfAbsent(
//           plantid,
//               () => Cartitem(
//             id: DateTime.now().toString(),
//             title: title.toString(),
//             scientificname: 'scientificname'.toString(),
//             image: 'image'.toString(),
//             description: 'description'.toString(),
//             price: price.toDouble(),
//             qty: 1,
//           ));
//       notifyListeners();
//     }
//   }
//
//   double get totalToPay {
//     double total = 0.0;
//     _items.forEach((key, value) {
//       total += value.price * value.qty;
//     });
//     return total;
//   }
//   void removeitem(String plantId){
//     _items.remove(plantId);
//     notifyListeners();
//     void clearCart(){
//       _items ={};
//       notifyListeners();
//     }
//   }
// }


import 'package:flutter/cupertino.dart';

import '../helper/cart product.dart';

class CartItems with ChangeNotifier {
  List<CartItem> _indoorPlants = [

    CartItem(
        id: "1",
        title: " Aglaonema Queen Plant ",
        price: 265,
        quantity: 1,
        image:
        "'https://media.istockphoto.com/id/1263431301/photo/aglaonema-maria-houseplant-cuttings-in-a-red-glass-vase-in-front-of-a-white-wall-chinese.jpg?s=612x612&w=0&k=20&c=2T9TXgR8kpCXG6SGQJHE4Sy1YPfHSmHhArI_ZcAm0Zw=',",
    ),
    CartItem(
        id: "2",
        title: "Peace Lily",
        price: 200,
        quantity: 1,
        image:
        "https://www.ugaoo.com/cdn/shop/products/GroPot.jpg?v=1704867612&width=37"),
    CartItem(
      id: "3",
      title: "Algerian Ivy",
      image:
      "https://hips.hearstapps.com/hmg-prod/images/english-ivy-hedera-marengo-w-3-6488ad58cace8.jpg?crop=1xw:1xh;center,top&resize=980:*",
      price: 499,
      quantity: 1,
    ),
    CartItem(
      id: "4",
      title: "Blue Star Fern",
      image:
      'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
      price: 299,
      quantity: 1,

    ),
    CartItem(
      id: "5",
      title: "Jade Plant Mini",
      image:
      'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
      price: 699,
      quantity: 1,),
    CartItem(id: "6",
      title: "Yucca Sliver Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/files/AImage_0356aa2c-8ed4-4355-973e-782cf61028c2.jpg?v=1702460741&width=375",
      price: 264,
      quantity:1,),
    CartItem(
      id: "7",
      title: "Broken Heart Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/files/small-atlantis-midnight-blue-broken-heart-plant-32517995724932.jpg?v=1688732267&width=375",
      price: 89,
      quantity: 1,),


    CartItem(
      id: "8",
      title: "Peperomia Green Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Mocca_0ade021a-89b8-4814-93d9-2d7381decd99.jpg?v=1693639925&width=375",
      price: 199,
      quantity: 1,),
    CartItem(
      id: "9",
      title: "Snake Plant-Golden Hahnii",
      image:
      "https://www.ugaoo.com/cdn/shop/products/AtlantisPlanter-Teal_3edaf641-904e-485f-9d80-e11293f26546.jpg?v=1680435202&width=375",
      price: 160,
      quantity: 1,),


    CartItem(
        id: "10",
        title: "Stromanthe Triostar Plant",
        image:
        "https://www.ugaoo.com/cdn/shop/products/Krish12Planter-Ivory_3f18466a-68f8-4763-8a18-fe58269b0f6a.jpg?v=1681551837&width=375",
        price: 359,
        quantity: 1),


  ];

  List<CartItem> get cartPlants {
    return _indoorPlants.where((cart) => cart.iscart).toList();
  }

  List<CartItem> get indoorPlants => _indoorPlants;

  CartItem findById(String id) {
    return _indoorPlants.firstWhere((cart) => cart.id == id);
  }
}