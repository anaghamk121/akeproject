// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.darT';
//
//
// void main() {  runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//         useInheritedMediaQuery: true,
//         debugShowCheckedModeBanner: false,
//         home: profile())));
// }
// class profile extends StatefulWidget{
//   @override
//   State<profile> createState() => _profileState();
// }
//
// class _profileState extends State<profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//             title: Row(
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.arrow_back),
//                 ),
//                 Text("My Account")
//               ],
//             ),),
//     ],
//     ),
//     );
//
//   }
// }
/*
import 'package:flutter/cupertino.dart';
class profilescreen extends StatelessWidget{
  static String routename ='/profile';
  @override
  Widget build(BuildContext context) {
    return Container();
  }

}*/
/*
import 'package:flutter/material.dart';

import '10 orders.dart';
import '10 payment details.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
//profile, profile screen*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Login page.dart';
import 'orders.dart';
//
// void main (){
//   runApp(DevicePreview(builder: (BuildContext context)=>
//       MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
//         home: Profile(),
//       )
//   )
//   );
// }
class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,appBar: AppBar(title: Text("Profile"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Padding(
                      padding: const EdgeInsets.only(left:300,top: 25),
                      child: IconButton(onPressed: (){}, icon: SvgPicture.asset("SvgImages/menu.svg",color: Colors.black,),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: SizedBox(width: 130,height: 130,
                      child: ClipRRect(borderRadius: BorderRadius.circular(100),
                          child: Image(image: AssetImage("images/women.png"),))),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
                    // boxShadow: [
                    //   BoxShadow(offset: Offset(0,5),
                    //   color: Colors.grey.withOpacity(.2) )
                    // ],
                  ),
                  child: Column(
                    children: [
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                        child: ListTile(
                          title: Text("Orders"),
                          leading: Icon(Icons.person),
                          trailing: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>orders()));},
                            icon: Icon(Icons.arrow_forward),)
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:Colors.blueGrey[100],),
                        child: ListTile(
                          title: Text("Purchase History"),
                          leading: Icon(Icons.history),
                          trailing: Icon(Icons.arrow_forward),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                        child: ListTile(
                          title: Text("Help Center"),
                          leading: Icon(Icons.help),
                          trailing: Icon(Icons.arrow_forward),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                        child: ListTile(
                          title: Text("Settings"),
                          leading: Icon(Icons.settings),
                          trailing: Icon(Icons.arrow_forward),
                        ),width: 300,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>projlogin()));}, child: Text("Log out")),
                      )
                    ],
                  ),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}