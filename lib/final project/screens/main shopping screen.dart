import 'package:akeproject/final%20project/providers/cart%20provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';
import '../helper/grid product item.dart';
import '../helper/wish product.dart';
import '../providers/wishlist provider.dart';
import 'cart screen.dart';

//
// void main() {
//   runApp(MultiProvider(
//     providers: [ ChangeNotifierProvider(
//         create: (BuildContext context) => Plants()),
//       ChangeNotifierProvider(
//           create: (BuildContext context) => Cart()),
//       /*child: ChangeNotifierProvider(
//       create: (BuildContext context) => Plants(),*/
//     ], child: MaterialApp(routes: {
//     '/Cart' :(context) => CartScreen(),
//   },
//     home: mainshoppingscreen(),
//   ),
//   ),
//   );
// }

class mainshoppingscreen extends StatefulWidget {
  static const id = '/mainshoppingscreen';

  // static const id = '/detailspage';
  mainshoppingscreen({Key? key}) : super(key: key);

  @override
  State<mainshoppingscreen> createState() => _mainshoppingscreenState();
}

class _mainshoppingscreenState extends State<mainshoppingscreen> {
  bool showfav = false;
  bool showca = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Let's plant"),
          actions: [
            PopupMenuButton(
                onSelected: (int selectedVal) {
                  if (selectedVal == 0) {
                    setState(() {
                      showfav = true;
                    });
                  }
                  if (selectedVal == 1) {
                    setState(() {
                      showfav = false;
                    });
                  }
                },
                icon: Icon(Icons.favorite),
                itemBuilder: (_) {
                  return [
                    PopupMenuItem(
                      child: Text("favorites"),
                      value: 0,
                    ),
                    PopupMenuItem(
                      child: Text("un favorites"),
                      value: 1,
                    )
                  ];
                }),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
                // Navigator.of(context).pushNamed(CartScreen as String);
               // Navigator.pushNamed(context, MaterialPageRoute(builder: (context)=>CartScreen()) as String);
              },
              icon: Icon(Icons.shopping_cart_checkout),
            )
          ],
        ),
        body: PlantsGrid(
          isfav: showfav,
        ),
      ),
    );
  }
}

class PlantsGrid extends StatelessWidget {
  const PlantsGrid({
    Key? key,
    required this.isfav,

  }) : super(key: key);
  final bool isfav;

  @override
  Widget build(BuildContext context) {
    final plantDate = Provider.of<Plants>(context);
    final indoorPlants =
        isfav ? plantDate.favoritePlants : plantDate.indoorPlants;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30),
      itemBuilder: (context, index) {
        return ChangeNotifierProvider<Plant>.value(
            value: indoorPlants[index],
            // (create: (BuildContext context) => indoorPlants[index],
            child: gridproductitem(
                /*  id: indoorPlants[index].id,
            title: indoorPlants[index].title,
            image: indoorPlants[index].image,*/
                ));
      },
      itemCount: indoorPlants.length,
    );
  }
}
