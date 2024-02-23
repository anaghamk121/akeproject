// import 'dart:ffi';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.darT';
// import 'package:provider/provider.dart';
//
// import '../helper/cart product.dart';
// import '../providers/cart provider.dart';
//
//
//
// class CartScreen extends StatelessWidget{
//   static const id = '/Cart';
//   const CartScreen ({Key ?key}): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);
//     return Scaffold(
//         appBar: AppBar(title: Text("Your Cart"),),
//         body: Column(children: [Card(
//           margin: const EdgeInsets.all(20),
//           child:Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children:[
//                 Text('Total'),
//
//                 Spacer(),
//                 Chip(label: Text("${cart.totalToPay.toString()} \$")),
//                 TextButton(onPressed: (){}, child: Text("Order Now"))
//               ],
//             ),),
//
//         ),
//           const SizedBox(height: 20,),
//           Expanded(child: ListView.builder(
//               itemCount: cart.items.length,
//               itemBuilder:(context, index) =>CartItemTile(
//                 id: cart.items.values.toList()[index].id,
//                 title: cart.items.values.toList()[index].title,
//                 scientificname:cart.items.values.toList()[index].scientificname,
//                 image:cart.items.values.toList()[index].image,
//                 price: cart.items.values.toList()[index].price,
//                 description:cart.items.values.toList()[index].description,
//                 qty: cart.items.values.toList()[index].qty,
//                 productId: cart.items.keys.toList()[index], scientificName: '',
//               )))]));
//   }}

// import 'package:flutter/material.dart';
//
// import '../helper/cart product.dart';
// // Import the CartItem widget
//
// class CartScreen extends StatelessWidget {
//   final List<CartItem> cartItems = [
//     CartItem(
//         id: "1",
//         title: " Aglaonema Queen Plant ",
//         price: 265,
//         quantity: 1,
//         image:
//         "https://media.istockphoto.com/id/1263431301/photo/aglaonema-maria-houseplant-cuttings-in-a-red-glass-vase-in-front-of-a-white-wall-chinese.jpg?s=612x612&w=0&k=20&c=2T9TXgR8kpCXG6SGQJHE4Sy1YPfHSmHhArI_ZcAm0Zw="),
//     CartItem(
//         id: "2",
//         title: "Peace Lily",
//         price: 200,
//         quantity: 1,
//         image:
//         "https://www.ugaoo.com/cdn/shop/products/GroPot.jpg?v=1704867612&width=37"),
//     CartItem(
//       id: "3",
//       title: "Algerian Ivy",
//       image:
//       "https://hips.hearstapps.com/hmg-prod/images/english-ivy-hedera-marengo-w-3-6488ad58cace8.jpg?crop=1xw:1xh;center,top&resize=980:*",
//       price: 499,
//       quantity: 1,
//     ),
//     CartItem(
//       id: "4",
//       title: "Blue Star Fern",
//       image:
//       'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
//       price: 299,
//       quantity: 1,
//
//     ),
//     CartItem(
//       id: "5",
//       title: "Jade Plant Mini",
//       image:
//       'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
//       price: 699,
//       quantity: 1,),
//     CartItem(id: "6",
//       title: "Yucca Sliver Plant",
//       image:
//       "https://www.ugaoo.com/cdn/shop/files/AImage_0356aa2c-8ed4-4355-973e-782cf61028c2.jpg?v=1702460741&width=375",
//       price: 264,
//       quantity:1,),
//     CartItem(
//       id: "7",
//       title: "Broken Heart Plant",
//       image:
//       "https://www.ugaoo.com/cdn/shop/files/small-atlantis-midnight-blue-broken-heart-plant-32517995724932.jpg?v=1688732267&width=375",
//       price: 89,
//       quantity: 1,),
//
//
//     CartItem(
//       id: "8",
//       title: "Peperomia Green Plant",
//       image:
//       "https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Mocca_0ade021a-89b8-4814-93d9-2d7381decd99.jpg?v=1693639925&width=375",
//       price: 199,
//       quantity: 1,),
//     CartItem(
//       id: "9",
//       title: "Snake Plant-Golden Hahnii",
//       image:
//       "https://www.ugaoo.com/cdn/shop/products/AtlantisPlanter-Teal_3edaf641-904e-485f-9d80-e11293f26546.jpg?v=1680435202&width=375",
//       price: 160,
//       quantity: 1,),
//
//
//     CartItem(
//         id: "10",
//         title: "Stromanthe Triostar Plant",
//         image:
//         "https://www.ugaoo.com/cdn/shop/products/Krish12Planter-Ivory_3f18466a-68f8-4763-8a18-fe58269b0f6a.jpg?v=1681551837&width=375",
//         price: 359,
//         quantity: 1),
//     // CartItem(
//     //     id: "1",
//     //     title: "Aglaonema Queen Plant",
//     //     scientificname: "Aglaonema modestum",
//     //     image:
//     //     'https://media.istockphoto.com/id/1263431301/photo/aglaonema-maria-houseplant-cuttings-in-a-red-glass-vase-in-front-of-a-white-wall-chinese.jpg?s=612x612&w=0&k=20&c=2T9TXgR8kpCXG6SGQJHE4Sy1YPfHSmHhArI_ZcAm0Zw=',
//     //     description:
//     //     "Aglaonema silver queen has attractive, silvery-green, lance-shaped leaves."
//     //         " The marbled darker green color allows this Chinese Evergreen to tolerate some degree of shade. The leaves tend to grow in an upright manner",
//     //     price: 265,
//     // quantity : "1"),
//     // CartItem(
//     //   id: "2",
//     //   title: 'Peace Lily',
//     //   scientificname: 'Spathiphyllum',
//     //   image:
//     //   'https://www.ugaoo.com/cdn/shop/products/GroPot.jpg?v=1704867612&width=375',
//     //   description:
//     //   "The bigger cousin of the beautiful peace lily, the Spathiphyllum Sensation is one of the most loved peace lily varieties in the world. "
//     //       "In addition to its majestic white flowers, it has large, glossy, oblong leaves that are excellent air purifiers. The best part is its ease of growth and low-maintenance nature which makes it a perfect choice for first-time gardeners.",
//     //   price: 200,
//     // ),
//     // CartItem(
//     //   id: "3",
//     //   title: "Algerian Ivy",
//     //   scientificname: "Hedera canariensis",
//     //   image:
//     //   "https://hips.hearstapps.com/hmg-prod/images/english-ivy-hedera-marengo-w-3-6488ad58cace8.jpg?crop=1xw:1xh;center,top&resize=980:*",
//     //   description:
//     //   "This fast-growing evergreen has thick, shiny, deep green, lobed leaves with reddish stems. New growth is a light green color. ",
//     //   price: 499,
//     // ),
//     // CartItem(
//     //   id: "4",
//     //   title: "Blue Star Fern",
//     //   scientificname: "Phlebodium aureum blue",
//     //   image:
//     //   'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
//     //   description:
//     //   "Ferns as houseplants tend to be one of the trickier species to make thrive due to our dry, centrally heated homes. However, the Blue Star Fern is one of the easiest houseplant ferns there is and it is a real stunner.",
//     //   price: 299,
//     // ),
//     // CartItem(
//     //     id: "5",
//     //     title: "Jade Plant Mini",
//     //     scientificname: 'Crassula ovata Minima',
//     //     image:
//     //     'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
//     //     description:
//     //     'Crassula ovata is a common houseplant that is usually called jade plant, or less frequently referred to as friendship plant, money plant, or silver dollar plant.',
//     //     price: 699),
//     // CartItem(
//     //     id: "6",
//     //     title: "Yucca Sliver Plant",
//     //     scientificname: 'Yucca Elephantipes',
//     //     image:
//     //     "https://www.ugaoo.com/cdn/shop/files/AImage_0356aa2c-8ed4-4355-973e-782cf61028c2.jpg?v=1702460741&width=375",
//     //     description:
//     //     'Elevate your indoor and outdoor spaces with the enchanting Silver Yucca Plant, a botanical masterpiece that effortlessly blends elegance with resilience. With its striking architectural presence and minimal care requirements, the Silver Yucca Plant is the perfect choice for both seasoned plant enthusiasts and beginners alike. ',
//     //     price: 264),
//     // CartItem(
//     //     id: "7",
//     //     title: "Broken Heart Plant",
//     //     scientificname: 'monstera adansonii',
//     //     image:
//     //     "https://www.ugaoo.com/cdn/shop/files/small-atlantis-midnight-blue-broken-heart-plant-32517995724932.jpg?v=1688732267&width=375",
//     //     description:
//     //     'The Broken Heart Plant transcends its role as a houseplant. It serves as a powerful reminder of emotional healing and resilience through plants. Many individuals find solace in nurturing this plant, as it symbolizes the mending of a broken heart.',
//     //     price: 89),
//     // CartItem(
//     //     id: "8",
//     //     title: "Peperomia Green Plant",
//     //     scientificname: 'Peperomia obstusifolia',
//     //     image:
//     //     "https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Mocca_0ade021a-89b8-4814-93d9-2d7381decd99.jpg?v=1693639925&width=375",
//     //     description:
//     //     'The Peperomia Green is a great houseplant. It is low maintenance, looks beautiful and purifies air. An ornamental plant with succulent like fleshy, thick green leaves that adapts and grows very well in a variety of conditions. ',
//     //     price: 199),
//     // CartItem(
//     //     id: "9",
//     //     title: "Snake Plant-Golden Hahnii",
//     //     scientificname: "Dracaena trifasciata",
//     //     image:
//     //     "https://www.ugaoo.com/cdn/shop/products/AtlantisPlanter-Teal_3edaf641-904e-485f-9d80-e11293f26546.jpg?v=1680435202&width=375",
//     //     description:
//     //     "Snake plant also known as Dracaena trifasciata or Sansevieria is a hardy plant of Asparagaceae having long dark green leaves that is the native to west Africa. It is also believed to have air purifying properties.",
//     //     price: 160),
//     // CartItem(
//     //     id: "10",
//     //     title: "Stromanthe Triostar Plant",
//     //     scientificname: "Stromanthe sanguinea",
//     //     image:
//     //     "https://www.ugaoo.com/cdn/shop/products/Krish12Planter-Ivory_3f18466a-68f8-4763-8a18-fe58269b0f6a.jpg?v=1681551837&width=375",
//     //     description:
//     //     "It is a common houseplant in temperate climates, valued for its striking variegated leaves with purple undersides. It can grow outside in a humid tropical climate, but needs light shade in the afternoon and must be protected from high winds.[2]",
//     //     price: 359)
//   ];
//
//   // Add more cart items as needed
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 return CartItem(
//                   id: cartItems[index].id,
//                   title: cartItems[index].title,
//                   price: cartItems[index].price,
//                   quantity: cartItems[index].quantity,
//                   image: cartItems[index].image,
//                   );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Total:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '\$${_calculateTotalPrice(cartItems)}',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   double _calculateTotalPrice(List<CartItem> items) {
//     double total = 0;
//     for (var item in items) {
//       total += item.price * item.quantity;
//     }
//     return total;
//   }
// }




import 'package:flutter/material.dart';
import '../helper/cart product.dart';

import '../helper/cart product.dart'; // Import the CartItem widget

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems = [
    CartItem(
      id: "1",
      title: "Aglaonema Queen Plant",
      price: 265,
      quantity: 1,
      image:
      'https://media.istockphoto.com/id/1263431301/photo/aglaonema-maria-houseplant-cuttings-in-a-red-glass-vase-in-front-of-a-white-wall-chinese.jpg?s=612x612&w=0&k=20&c=2T9TXgR8kpCXG6SGQJHE4Sy1YPfHSmHhArI_ZcAm0Zw=',
    ),
    CartItem(
      id: "2",
      title: "Peace Lily",
      price: 200,
      quantity: 1,
      image:
      "https://www.ugaoo.com/cdn/shop/products/GroPot.jpg?v=1704867612&width=37",
    ),
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
      quantity: 1,
    ),
    CartItem(
      id: "6",
      title: "Yucca Sliver Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/files/AImage_0356aa2c-8ed4-4355-973e-782cf61028c2.jpg?v=1702460741&width=375",
      price: 264,
      quantity: 1,
    ),
    CartItem(
      id: "7",
      title: "Broken Heart Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/files/small-atlantis-midnight-blue-broken-heart-plant-32517995724932.jpg?v=1688732267&width=375",
      price: 89,
      quantity: 1,
    ),
    CartItem(
      id: "8",
      title: "Peperomia Green Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Mocca_0ade021a-89b8-4814-93d9-2d7381decd99.jpg?v=1693639925&width=375",
      price: 199,
      quantity: 1,
    ),
    CartItem(
      id: "9",
      title: "Snake Plant-Golden Hahnii",
      image:
      "https://www.ugaoo.com/cdn/shop/products/AtlantisPlanter-Teal_3edaf641-904e-485f-9d80-e11293f26546.jpg?v=1680435202&width=375",
      price: 160,
      quantity: 1,
    ),
    CartItem(
      id: "10",
      title: "Stromanthe Triostar Plant",
      image:
      "https://www.ugaoo.com/cdn/shop/products/Krish12Planter-Ivory_3f18466a-68f8-4763-8a18-fe58269b0f6a.jpg?v=1681551837&width=375",
      price: 359,
      quantity: 1,
    ),
  ];

  // Add more cart items as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                // return CartItem(
                //   id: cartItems[index].id,
                //   title: cartItems[index].title,
                //   price: cartItems[index].price,
                //   quantity: cartItems[index].quantity,
                //   image: cartItems[index].image,
                // );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${_calculateTotalPrice(cartItems)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _calculateTotalPrice(List<CartItem> items) {
    double total = 0;
    for (var item in items) {
      total += item.price * item.quantity;
    }
    return total;
  }
}
