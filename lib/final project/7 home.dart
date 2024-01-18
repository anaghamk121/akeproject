// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.darT';
// import 'package:provider/provider.dart';
//
// import '7 provider.dart';
// import '7 wishlist.dart';
//
// class providerhome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var movies = context.watch<MovieProvider>().movies;
//     //movies-home pagele list
//     var movielist = context.watch<MovieProvider>().wishmovie;
//     //movielist-
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("home"),
//         ),
//         body: Padding(
//             padding: EdgeInsets.all(15),
//             child: Column(children: [
//               ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => providerwishlist()));
//                   },
//                   icon: Icon(Icons.favorite),
//                   label: Text("Go to wishlist ${movielist.length}")),
//               SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                   child: Center(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,
//                           mainAxisSpacing: 20,crossAxisSpacing: 16,childAspectRatio: 0.7),
//                           itemBuilder: (context, index) {
//                         var movie = movies[index];
//                         return Card(
//                           key: ValueKey(movie.title),// value key - to check each one
//                           child: ListTile(
//                             title: Text(movie.title),
//                             subtitle: Text(movie.time ?? "No time"),
//                             trailing: IconButton(
//                               icon: Icon(Icons.favorite_border),
//                               color: movielist.contains(movie)
//                                   ? Colors.red
//                                   : Colors.black87,
//                               onPressed: () {
//                                 if (!movielist.contains(movie)) {
//                                   context.read<MovieProvider>().addToList(movie);
//                                 } else {
//                                   context.read<MovieProvider>().removeFromList(movie);
//                                 }
//                               },
//                             ),
//                           ),
//                         );
//                       }),
//                     ),
//                   ))])));
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.darT';
// // import 'package:provider/provider.dart';
// // import '7 provider.dart';
// // import '7 wishlist.dart';
// //
// // void main() {
// //   runApp(ChangeNotifierProvider(
// //       create: (_) => MovieProvider(),
// //       child: MaterialApp(
// //         home: providerhome(),
// //       )));
// // }
// //
// // class providerhome extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     var movies = context.watch<MovieProvider>().movies;
// //     //movies-home pagele list
// //     var movielist = context.watch<MovieProvider>().wishmovie;
// //     //movielist-
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: Text("home"),
// //         ),
// //         body: Padding(
// //             padding: EdgeInsets.all(15),
// //             child: Column(children: [
// //               ElevatedButton.icon(
// //                   onPressed: () {
// //                     Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => providerwishlist()));
// //                   },
// //                   icon: Icon(Icons.favorite),
// //                   label: Text("Go to wishlist ${movielist.length}")),
// //               SizedBox(
// //                 height: 20,
// //               ),
// //               Expanded(
// //                   child: Center(
// //                     child: Padding(
// //                       padding: EdgeInsets.all(8.0),
// //                       child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,
// //                           mainAxisSpacing: 20,crossAxisSpacing: 16,childAspectRatio: 0.7),
// //                           itemBuilder: (context, index) {
// //                         var movie = movies[index];
// //                         return Card(
// //                           key: ValueKey(movie.title),// value key - to check each one
// //                           child: ListTile(
// //                             title: Text(movie.title),
// //                             subtitle: Text(movie.time ?? "No time"),
// //                             trailing: IconButton(
// //                               icon: Icon(Icons.favorite_border),
// //                               color: movielist.contains(movie)
// //                                   ? Colors.red
// //                                   : Colors.black87,
// //                               onPressed: () {
// //                                 if (!movielist.contains(movie)) {
// //                                   context.read<MovieProvider>().addToList(movie);
// //                                 } else {
// //                                   context.read<MovieProvider>().removeFromList(movie);
// //                                 }
// //                               },
// //                             ),
// //                           ),
// //                         );
// //                       }),
// //                     ),
// //                   ))
// //             ])));
// //   }
// // }
//
