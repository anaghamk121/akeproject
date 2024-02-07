// /*
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.darT';
//
//
// void main() {
//   runApp(DevicePreview(
//       builder: (BuildContext context) => MaterialApp(
//           useInheritedMediaQuery: true,
//           debugShowCheckedModeBanner: false,
//           home: cart())));
// }
//
//
// class cart extends StatefulWidget {
//   @override
//   State<cart> createState() => _cartState();
// }
//
// class _cartState extends State<cart> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//             title: Row(
//           children: [
//             IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back),),Text("Shopping Bag")
//           ],
//         ))
//       ],
//     ));
//   }
// }
//
// */
// /*
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// void main(){}
// class ShoppingCartScreen extends StatefulWidget {
//   @override
//   _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
// }
//
// class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return EmptyShoppingCartScreen();
//   }
// }
//
// class EmptyShoppingCartScreen extends StatefulWidget {
//   @override
//   _EmptyShoppingCartScreenState createState() =>
//       _EmptyShoppingCartScreenState();
// }
//
// class _EmptyShoppingCartScreenState extends State<EmptyShoppingCartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(color: Colors.white),
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 70,
//               child: Container(
//                 color: Color(0xFFFFFFFF),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 250,
//               child: Image.asset(
//                 "assets/images/empty_shopping_cart.png",
//                 height: 250,
//                 width: double.infinity,
//               ),
//             ),
//             SizedBox(
//               height: 40,
//               child: Container(
//                 color: Color(0xFFFFFFFF),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               child: Text(
//                 "You haven't anything to cart",
//                 style: TextStyle(
//                   color: Color(0xFF67778E),
//                   fontFamily: 'Roboto-Light.ttf',
//                   fontSize: 20,
//                   fontStyle: FontStyle.normal,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }*/
// import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';
// import 'package:shopping/cartmodel.dart';
//
// import '8 cart model.dart';
//
// class CartPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _CartPageState();
//   }
// }
//
// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.indigo,
//           title: Text("Cart"),
//           actions: <Widget>[
//             FlatButton(
//                 child: Text(
//                   "Clear",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () => ScopedModel.of<CartModel>(context).clearCart())
//           ],
//         ),
//         body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
//             .cart
//             .length ==
//             0
//             ? Center(
//           child: Text("No items in Cart"),
//         )
//             : Container(
//             padding: EdgeInsets.all(8.0),
//             child: Column(children: <Widget>[
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: ScopedModel.of<CartModel>(context,
//                       rebuildOnChange: true)
//                       .total,
//                   itemBuilder: (context, index) {
//                     return ScopedModelDescendant<CartModel>(
//                       builder: (context, child, model) {
//                         return ListTile(
//                           title: Text(model.cart[index].title),
//                           subtitle: Text(model.cart[index].qty.toString() +
//                               " x " +
//                               model.cart[index].price.toString() +
//                               " = " +
//                               (model.cart[index].qty *
//                                   model.cart[index].price)
//                                   .toString()),
//                           trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 IconButton(
//                                   icon: Icon(Icons.add),
//                                   onPressed: () {
//                                     model.updateProduct(model.cart[index],
//                                         model.cart[index].qty + 1);
//                                     // model.removeProduct(model.cart[index]);
//                                   },
//                                 ),
//                                 IconButton(
//                                   icon: Icon(Icons.remove),
//                                   onPressed: () {
//                                     model.updateProduct(model.cart[index],
//                                         model.cart[index].qty - 1);
//                                     // model.removeProduct(model.cart[index]);
//                                   },
//                                 ),
//                               ]),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               Container(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "Total: \$ " +
//                         ScopedModel.of<CartModel>(context,
//                             rebuildOnChange: true)
//                             .totalCartValue
//                             .toString() +
//                         "",
//                     style: TextStyle(
//                         fontSize: 24.0, fontWeight: FontWeight.bold),
//                   )),
//               SizedBox(
//                   width: double.infinity,
//                   child: RaisedButton(
//                     color: Colors.yellow[900],
//                     textColor: Colors.white,
//                     elevation: 0,
//                     child: Text("BUY NOW"),
//                     onPressed: () {},
//                   ))
//             ])));
//   }
// }




/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';
import '8 cart model.dart';
import '8 cart provider.dart';

class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartProvider>().wishplant;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "My Wishlist (${cart.length})"), //add aye data nte count or no koode appbarlek verum
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: cart.length,
          // wishlist nte countmovie lek edth vechu
          itemBuilder: (context, index) {
            final plant = cart[index]; //
            return Card(
              key: ValueKey(plant.title),
              child: ListTile(
                title: Text(plant.title),
                trailing: TextButton(
                  onPressed: () {
                    context.read<CartProvider>().removeFromList(
                        plant as Cart); // add ayeth remove aakan
                  },
                  child: Text("Remove"),
                ),
              ),
            );
          }),
    );
  }
}
*/
