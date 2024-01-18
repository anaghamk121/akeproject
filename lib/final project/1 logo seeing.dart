import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '2 get started.dart';

void main() {
  runApp(
      DevicePreview(
      builder: (BuildContext context) => GetMaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: photo(),
            theme: ThemeData(),
          )));
}

class photo extends StatefulWidget {
  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          //nav-one state to another ,
          context,
          MaterialPageRoute(builder: (context) => start()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage("images/greenega logo.png"),
         /* image: NetworkImage(
            "https://png.pngtree.com/template/20191024/ourmid/pngtree-flower-pot-and-plant-logo-growth-vector-logo-image_322946.jpg",
          ),*/
        ),
      ),
    );
  }
}
