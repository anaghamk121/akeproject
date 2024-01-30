import 'package:flutter/material.darT';

import '6 plant details.dart';

class PlantCard extends StatefulWidget {
  final String name;
  final double price;
  final String image;
  final String details;
  final String scientificname;
  final bool isWishlist;
  final VoidCallback onToggleWishlist;
  final bool isInCart;
  final VoidCallback onToggleCart;

  PlantCard({
    required this.name,
    required this.price,
    required this.image,
    required this.details,
    required this.scientificname,
    required this.isWishlist,
    required this.onToggleWishlist,
    required this.isInCart,
    required this.onToggleCart,
  });
  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  List<String> wishlist=[];
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(3),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Image.network(
            widget.image,
            width: 100,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            top: 230,
          ),
          child: Text(widget.name, style: TextStyle(fontSize: 12)),
        ),
        subtitle: Text('\$${widget.price}', style: TextStyle(fontSize: 10)),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          // ElevatedButton.icon(onPressed: (){
          //   setState(() {
          //     if(wishlist.contains(plants[index])){wishlist.remove(plants[index]);}
          //     else{ wishlist.add(plants[index] as String);}
          //   });
          // },
          //   icon: Icon(Icons.favorite),
          //   label: Text(wishlist.contains(plants[index])? "Remove":"Add",style: TextStyle(color: Colors.black),),
          //   style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),)
          IconButton(
            icon: Icon(
              widget.isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
              color: widget.isInCart ? Colors.blue : null,
            ),
            onPressed: widget.onToggleCart,
          ),
          IconButton(
            icon: Icon(
              widget.isWishlist ? Icons.favorite : Icons.favorite_border,
              color: widget.isWishlist ? Colors.red : null,
            ),
            onPressed: widget.onToggleWishlist,
          )
        ]),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlantDetailsPage(
                name: widget.name,
                price: widget.price,
                image: widget.image,
                details: widget.details,
                scientificname: widget.scientificname,
                isWishlist: widget.isWishlist,
                onToggleWishlist: widget.onToggleWishlist,
                isInCart: widget.isInCart,
                onToggleCart: widget.onToggleCart,
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.darT';
// import '6 plant pictures page  home.dart';
//
// // void main(){runApp(MaterialApp(home: PlantCard(name: '',),));}
// class PlantCard extends StatefulWidget {
//   final String name;
//   final double price;
//   final String image;
//   final String details;
//   final String scientificname;
//   final bool isWishlist;
//   final VoidCallback onToggleWishlist;
//   final bool isInCart;
//   final VoidCallback onToggleCart;
//
//   PlantCard({
//     required this.name,
//     required this.price,
//     required this.image,
//     required this.details,
//     required this.scientificname,
//     required this.isWishlist,
//     required this.onToggleWishlist,
//     required this.isInCart,
//     required this.onToggleCart,
//   });
//
//   @override
//   State<PlantCard> createState() => _PlantCardState();
// }
//
// class _PlantCardState extends State<PlantCard> {
//   int index=1;
//   List<Map<dynamic, dynamic>> plants = [
//     {
//       'name': 'Aglaonema Queen Plant',
//       "scientificname": "Aglaonema modestum",
//       'price': 265,
//       'image':
//       'https://media.istockphoto.com/id/1263431301/photo/aglaonema-maria-houseplant-cuttings-in-a-red-glass-vase-in-front-of-a-white-wall-chinese.jpg?s=612x612&w=0&k=20&c=2T9TXgR8kpCXG6SGQJHE4Sy1YPfHSmHhArI_ZcAm0Zw=',
//       'details':
//       "Aglaonema silver queen has attractive, silvery-green, lance-shaped leaves."
//           " The marbled darker green color allows this Chinese Evergreen to tolerate some degree of shade. The leaves tend to grow in an upright manner",
//     },
//     {
//       'name': 'Peace Lily',
//       'scientificname': 'Spathiphyllum',
//       'price': 200,
//       'image':
//       'https://www.ugaoo.com/cdn/shop/products/GroPot.jpg?v=1704867612&width=375',
//       'details':
//       "The bigger cousin of the beautiful peace lily, the Spathiphyllum Sensation is one of the most loved peace lily varieties in the world. In addition to its majestic white flowers, it has large, glossy, oblong leaves that are excellent air purifiers. The best part is its ease of growth and low-maintenance nature which makes it a perfect choice for first-time gardeners.",
//     },
//     {
//       "name": "Algerian Ivy",
//       "scientificname": "Hedera canariensis",
//       'price': 499,
//       "details":
//       "This fast-growing evergreen has thick, shiny, deep green, lobed leaves with reddish stems. New growth is a light green color. ",
//       "image":
//       "https://hips.hearstapps.com/hmg-prod/images/english-ivy-hedera-marengo-w-3-6488ad58cace8.jpg?crop=1xw:1xh;center,top&resize=980:*",
//     },
//     {
//       "name": "Blue Star Fern",
//       "scientificname": "Phlebodium aureum blue",
//       'price': 299,
//       "details":
//       "Ferns as houseplants tend to be one of the trickier species to make thrive due to our dry, centrally heated homes. However, the Blue Star Fern is one of the easiest houseplant ferns there is and it is a real stunner.",
//       "image":
//       'https://hips.hearstapps.com/hmg-prod/images/8fern-bluestar-1-b614bb08-5281-48e3-8d5c-8c63618be498-6488ad58cdd22.jpg?crop=1xw:1xh;center,top&resize=980:*'
//     },
//     {
//       "name": "Jade Plant Mini",
//       'scientificname': 'Crassula ovata Minima',
//       'price': 699,
//       "image":
//       'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
//       'details':
//       'Crassula ovata is a common houseplant that is usually called jade plant, or less frequently referred to as friendship plant, money plant, or silver dollar plant.',
//     },
//     {
//       "name": "Yucca Sliver Plant",
//       'scientificname': 'Yucca Elephantipes',
//       'price': 264,
//       'image':
//       "https://www.ugaoo.com/cdn/shop/files/AImage_0356aa2c-8ed4-4355-973e-782cf61028c2.jpg?v=1702460741&width=375",
//       'details':
//       'Elevate your indoor and outdoor spaces with the enchanting Silver Yucca Plant, a botanical masterpiece that effortlessly blends elegance with resilience. With its striking architectural presence and minimal care requirements, the Silver Yucca Plant is the perfect choice for both seasoned plant enthusiasts and beginners alike. ',
//     },
//     {
//       "name": "Broken Heart Plant",
//       'scientificname': 'monstera adansonii',
//       'price': 89,
//       'image':
//       "https://www.ugaoo.com/cdn/shop/files/small-atlantis-midnight-blue-broken-heart-plant-32517995724932.jpg?v=1688732267&width=375",
//       "details":
//       'The Broken Heart Plant transcends its role as a houseplant. It serves as a powerful reminder of emotional healing and resilience through plants. Many individuals find solace in nurturing this plant, as it symbolizes the mending of a broken heart.',
//     },
//
//     {
//       "name": "Peperomia Green Plant",
//       'scientificname': 'Peperomia obstusifolia',
//       'price': 199,
//       'details':
//       'The Peperomia Green is a great houseplant. It is low maintenance, looks beautiful and purifies air. An ornamental plant with succulent like fleshy, thick green leaves that adapts and grows very well in a variety of conditions. ',
//       'image':
//       "https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Mocca_0ade021a-89b8-4814-93d9-2d7381decd99.jpg?v=1693639925&width=375",
//     },
//     {
//       "name": "Snake Plant-Golden Hahnii",
//       "scientificname": "Dracaena trifasciata",
//       'price': 160,
//       "details":
//       "Snake plant also known as Dracaena trifasciata or Sansevieria is a hardy plant of Asparagaceae having long dark green leaves that is the native to west Africa. It is also believed to have air purifying properties.",
//       'image':
//       "https://www.ugaoo.com/cdn/shop/products/AtlantisPlanter-Teal_3edaf641-904e-485f-9d80-e11293f26546.jpg?v=1680435202&width=375",
//     },
//     {
//       "name": "Stromanthe Triostar Plant",
//       "scientificname": "Stromanthe sanguinea",
//       'price': 359,
//       "details":
//       "It is a common houseplant in temperate climates, valued for its striking variegated leaves with purple undersides. It can grow outside in a humid tropical climate, but needs light shade in the afternoon and must be protected from high winds.[2]",
//       "image":
//       "https://www.ugaoo.com/cdn/shop/products/Krish12Planter-Ivory_3f18466a-68f8-4763-8a18-fe58269b0f6a.jpg?v=1681551837&width=375",
//     },
//     // Add more plant data
//   ];
//   List<String> wishlist=[];
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(3),
//       child: ListTile(
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 90),
//           child: Image.network(
//             widget.image,
//             width: 100,
//             height: 180,
//             fit: BoxFit.cover,
//           ),
//         ),
//         title: Padding(
//           padding: const EdgeInsets.only(
//             top: 230,
//           ),
//           child: Text(widget.name, style: TextStyle(fontSize: 12)),
//         ),
//         subtitle: Text('\$${widget.price}', style: TextStyle(fontSize: 10)),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton.icon(onPressed: (){
//               setState(() {
//                 if(wishlist.contains(plants[index])){wishlist.remove(plants[index]);}
//                 else{ wishlist.add(plants[index] as String);}
//               });
//             },
//               icon: Icon(Icons.favorite),
//               label: Text(wishlist.contains(plants[index])? "Remove":"Add",style: TextStyle(color: Colors.black),),
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),)
//           ],
//         ),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => PlantDetailsPage(
//                 name: widget.name,
//                 price: widget.price,
//                 image: widget.image,
//                 details: widget.details,
//                 scientificname: widget.scientificname,
//                 isWishlist: widget.isWishlist,
//                 onToggleWishlist: widget.onToggleWishlist,
//                 isInCart: widget.isInCart,
//                 onToggleCart: widget.onToggleCart,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
