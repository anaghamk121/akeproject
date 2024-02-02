import 'package:akeproject/servicess.dart';
import 'package:akeproject/snack.dart';
import 'package:akeproject/vegsmenu.dart';
import 'package:akeproject/wishlist.dart';
import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';

import 'drink.dart';
import 'nonvegs.dart';

void main(){runApp(MaterialApp(home: foodmenu(),debugShowCheckedModeBanner: false,));}
class foodmenu extends StatefulWidget
{
  @override
  State<foodmenu> createState() => _foodmenuState();
}
class _foodmenuState extends State<foodmenu> {
  var items=["Puttu","Dosa","Uppumav","Pathiri","Idli","Idiyappam","Poratta","Vellappam","Chick pea curry","Fish curry","Veg kuruma","Sambar","Mung bean","Chicken biriyani","Beef biriyani","Mutton biriyani","Egg biriyani","Fish biriyani","Chemmeen biriyani","Neychor","Chicken stew","Beef stew","Mutton stew","Meals","Broasted chicken","Alphaham","Shavaya","Chilli chikken","Chicken tikka","Chicken 65",
    "Tea","Coffee","Bru coffee","Green tea","Lemon tea","Bru coffee","Lime juice","Lime soda","Mint lime","Mojito","Apple juice","Mango juice","Pineapple juice","Strawberry juice","Pappaya juice","Cucumber juice","chikku shake","Falooda","Avil milk","Sharja shake",
    "Toasted bread","Burger","Sandwich","Chicken roll","Pazhampori","Pathiri","Bonda","Kayappam","Neyvada","Ullivada","Uzhunnu vada","Parippu vada","Keseri","Appam",
  ];
  int index=1;
  List<String> wish = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [SliverAppBar(backgroundColor: Colors.yellow[300],
              floating: true,
              pinned: true,
              expandedHeight: 70,
              bottom: AppBar(backgroundColor: Colors.yellow[300],
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(100)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black,),
                        hintText: "Search your taste here",
                        hintStyle: GoogleFonts.aclonica(),
                        border: InputBorder.none),
                  ),
                ),

              ),
            ), SliverList(delegate: SliverChildListDelegate([
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[200],
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),
                      child: Center(child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => drinkmenu()));
                      }, child: Text("Drinks",
                        style: GoogleFonts.aclonica(color: Colors.black45),),)),
                      height: 30,
                      width: 100,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 15),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.lightGreen[200],
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),
                      child: Center(child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => snacksmenu()));
                      }, child: Text("Snacks",
                        style: GoogleFonts.aclonica(color: Colors.black45),),)),
                      height: 30,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 2),
                    child: Container(decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                      child: Center(child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => nonvegssmenu()));
                      }, child: Text("Non-veg",
                        style: GoogleFonts.aclonica(color: Colors.black45),),)),
                      height: 30,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 15),
                    child: Container(decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                      child: Center(child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => vegssmenu()));
                      }, child: Text("Veg",
                        style: GoogleFonts.aclonica(color: Colors.black45),),)),
                      height: 30,
                      width: 100,
                    ),
                  ),
                ],
              ),
              Divider(),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // Adjust the cross-axis count as needed
                  crossAxisSpacing: 8.0,
                  // Adjust the spacing between grid items
                  mainAxisSpacing: 8.0, // Adjust the spacing between rows in the grid
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 64,
                // Replace with your actual item count
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(items[index]),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  if (wish.contains(items[index])) {
                                    wish.remove(items[index]);
                                  } else {
                                    wish.add(items[index]);
                                  }
                                });
                              },
                              icon: Icon(Icons.favorite),
                              label: Text(
                                wish.contains(items[index])
                                    ? "Remove"
                                    : "Add",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow[100],
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  if (wish.contains(items[index])) {
                                    wish.remove(items[index]);
                                  } else {
                                    wish.add(items[index]);
                                  }
                                });
                              },
                              icon: Icon(Icons.favorite),
                              label: Text(
                                wish.contains(items[index])
                                    ? "Remove"
                                    : "cart",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow[100],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),

            ],
            ),
            ),

            ]
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.yellow[200],
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            onTap: (tapindex)
            {
              setState(() {
                index=tapindex;
              });
            },
            items: [
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>services()));
              },
                icon: Icon(Icons.home_filled),),label: "Home"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen(wishlist:wish,)));
              }, icon: Icon(Icons.shopping_cart),),label: "Cart"),
              BottomNavigationBarItem(icon:IconButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>maincart()));
              },
                icon: Icon(Icons.card_giftcard_sharp),),label: "Orders"),

            ]));
  }
}