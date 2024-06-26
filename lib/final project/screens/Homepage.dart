import 'package:akeproject/final%20project/screens/main_screen.dart';
import 'package:akeproject/final%20project/screens/plant_details_page.dart';
import 'package:akeproject/final%20project/screens/review%20page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../providers/wishlist_provider.dart';
import 'Account .dart';
import 'notification.dart';

//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   /// hive initialisation
//   await Hive.initFlutter();
//   await Hive.openBox('task_box');
//   runApp(MaterialApp(
//         useInheritedMediaQuery: true,
//         debugShowCheckedModeBanner: false,
//         home:
//         mainscreen(),
//   ));
// }

class mainscreen extends StatefulWidget {
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  var screen = [

    WishlistPage(),
   ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            // expandedHeight: 150,
            backgroundColor: Colors.white,
            //floating: true,
            //pinned: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                    )),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notification()));
                  },
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WishlistPage()));
                   },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.green,
                  ))
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadiusDirectional.circular(150)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Find your buddy",
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.keyboard_voice_outlined,
                        color: Colors.white,
                      ),
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                screen[index],
              ],
            )
          ]))
        ]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green[700],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.black12,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => mainscreen() ));
                  },
                  icon: const Icon(Icons.home_rounded),
                ),
                label: "home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => review()));
                  },
                  icon: const Icon(Icons.add),
                ),
                label: "Review",
                backgroundColor: Colors.green),
            /*  BottomNavigationBarItem(icon: IconButton(onPressed: ()
            {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>cart()));},
              icon:Icon( Icons.shopping_cart),),label: "Cart",
                backgroundColor: Colors.green),*/
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile()));
                  },
                  icon: Icon(Icons.account_circle),
                ),
                label: "Profile",
                backgroundColor: Colors.green),
          ],
        )
        /*bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,

        backgroundColor: Colors.green[800],
        items: const [
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.water_drop_outlined, title: "Tools"),
          TabItem(icon: Icons.add, title: "Add"),
          TabItem(icon: Icons.shopping_cart, title: "cart"),
          TabItem(icon: Icons.account_circle, title: "Profile"),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),*/
        );
  }
}
