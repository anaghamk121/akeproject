// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.darT';
// import 'package:provider/provider.dart';
// import '7 provider.dart';
// import '7 wishlist.dart';
//
// class PlantDetailsPage extends StatelessWidget {
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
//   PlantDetailsPage({
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
//   Widget build(BuildContext context) {
//     var movies = context.watch<MovieProvider>().movies;
//     // //movies-home pagele list
//     var movielist = context.watch<MovieProvider>().wishmovie;
//     //movielist-
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(name),
//         ),
//         body:
// ListView.builder(itemBuilder: (context, index) {
//           var movie = movies[index];
//           return Card(
//             key: ValueKey(movie.title),
//             child: ListTile(
//               title: Text(movie.title),
//               subtitle: Text(movie.time ?? "No time"),
//               trailing: IconButton(
//                 icon: Icon(Icons.favorite_border),
//                 color: movielist.contains(movie)
//                     ? Colors.red
//                     : Colors.black87,
//                 onPressed: () {
//                   if (!movielist.contains(movie)) {
//                     context.read<MovieProvider>().addToList(movie);
//                   } else {
//                     context.read<MovieProvider>().removeFromList(movie);
//                   }
//                 },
//               ),
//             ),
//           );
//         }),
//         Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Image.network(
//             image,
//             width: 250,
//             height: 300,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 16),
//           Text(name, style: TextStyle(fontSize: 24)),
//           SizedBox(height: 8),
//           Text('\$$price', style: TextStyle(fontSize: 18)),
//           Text(
//             scientificname,
//             style: TextStyle(fontSize: 15),
//           ),
//           Text(details, style: TextStyle(fontSize: 16)),
//           SizedBox(height: 30),
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             IconButton(
//               icon: Icon(
//                 isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
//                 color: isInCart ? Colors.blue : null,
//               ),
//               onPressed: onToggleCart,
//             ),
//             IconButton(
//               icon: Icon(
//                 isWishlist ? Icons.favorite : Icons.favorite_border,
//                 color: isWishlist ? Colors.red : null,
//               ),
//               onPressed: onToggleWishlist,
//             )
//           ]),
//           Padding(
//             padding: const EdgeInsets.only(top: 50),
//             child: ElevatedButton.icon(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => providerwishlist()));
//                 },
//                 icon: Icon(Icons.favorite),
//                 label: Text("Go to wishlist ${movielist.length}")),
//           ),
//         ]));
//   }
// }
//



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';

import '7 provider.dart';
import '7 wishlist.dart';

class PlantDetailsPage extends StatefulWidget {
  final String name;
  final double price;
  final String image;
  final String details;
  final String scientificname;
  final bool isWishlist;
  final VoidCallback onToggleWishlist;
  final bool isInCart;
  final VoidCallback onToggleCart;

  PlantDetailsPage({
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
  State<PlantDetailsPage> createState() => _PlantDetailsPageState();
}

class _PlantDetailsPageState extends State<PlantDetailsPage> {
  List<String> wishlist = [];
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    // //movies-home pagele list
    var movielist = context.watch<MovieProvider>().wishmovie;
    //movielist-
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
        ),
        body:
        /*ListView.builder(itemBuilder: (context, index) {
          var movie = movies[index];
          return Card(
            key: ValueKey(movie.title),
            child: ListTile(
              title: Text(movie.title),
              subtitle: Text(movie.time ?? "No time"),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                color: movielist.contains(movie)
                    ? Colors.red
                    : Colors.black87,
                onPressed: () {
                  if (!movielist.contains(movie)) {
                    context.read<MovieProvider>().addToList(movie);
                  } else {
                    context.read<MovieProvider>().removeFromList(movie);
                  }
                },
              ),
            ),
          );
        }),*/Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
            widget.image,
            width: 250,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Text(widget.name, style: TextStyle(fontSize: 24)),
          SizedBox(height: 8),
          Text('\$${widget.price}', style: TextStyle(fontSize: 18)),
          Text(
            widget.scientificname,
            style: TextStyle(fontSize: 15),
          ),
          Text(widget.details, style: TextStyle(fontSize: 16)),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => providerwishlist()));},
                icon: Icon(Icons.favorite),
                label:
                //Text( onToggleWishlist.(plants[index])? "Remove":"Add",style: TextStyle(color: Colors.black),),
                Text("Go to wishlist ${movielist.length}")),
          ),
        ]));
  }
}
