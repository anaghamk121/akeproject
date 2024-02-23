import 'package:akeproject/final%20project/helper/wish%20product.dart';
import 'package:akeproject/final%20project/screens/details%20page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';

class gridproductitem extends StatelessWidget {
  const gridproductitem({
    Key? key,
    //required this.id,required this.title,required this.image
  }) : super(key: key);

//final String id,title,image;
  @override
  Widget build(BuildContext context) {
    //  final plant = Provider.of<Plant>(context);
    return Consumer<Plant>(builder: (context, plant, _) {

      return ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: GridTile(
          footer: GridTileBar(
            title: Text(
              plant.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
            backgroundColor: Colors.grey,
            leading: IconButton(
              icon: plant.isfavorite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              onPressed: () {
                plant.toggleIsFav();
              },
            ),
            trailing: IconButton(
      onPressed: (){},
              // icon:cart.iscart ? Icon(Icons.shopping_cart):Icon(Icons.shopping_cart_checkout),
              // onPressed: () {
              //   cart.toggleIsCart();
               icon: Icon(Icons.shopping_cart_checkout),
            ),
          ),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>detailspage())
                 // Navigator.of(context).pushNamed(
                 //  detailspage.id,
                 //   arguments: plant.id,
                );
              },
              child: Image.network(plant.image)),
        ),
      );
    });
  }
}