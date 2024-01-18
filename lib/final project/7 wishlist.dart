import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';
import '7 provider.dart';

/*

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: providerwishlist(),
          )));
}
*/


class providerwishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var providerwishlist = context.watch<MovieProvider>().wishmovie;
    //wishmovie- wishlistle add aay vernna list
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wishlist (${providerwishlist.length})"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
              childAspectRatio: 0.7),
          itemCount: providerwishlist.length,
          itemBuilder: (context, index) {
            final movie = providerwishlist[index];
            return Card(
              key: ValueKey(movie.title),
              child: ListTile(
                title: Text(movie.title),
                trailing: TextButton(
                  onPressed: () {
                    context.read<MovieProvider>().removeFromList(movie);
                  },
                  child: Text("Remove"),
                ),
              ),
            );
          }),
    );
  }
}

/*


import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: favorite())));
}


class favorite extends StatefulWidget{
  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              title: Row(
                children: [
                  Text("Wishlist")
                ],
              )),
        ],
      ),
    );
  }
}
*/
