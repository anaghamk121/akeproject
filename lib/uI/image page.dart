import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'first plant page.dart';



/*
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: appimage(),)));
}
*/
void main(){
  runApp(MaterialApp(home: appimage(),));
}

class appimage extends StatefulWidget{
  @override
  State<appimage> createState() => _appimageState();
}

class _appimageState extends State<appimage> {
  void initState() {
    Timer(Duration(seconds: 5), () {
     /* Navigator.pushReplacement(     //nav-one state to another ,
          context, MaterialPageRoute(builder: (context) => plantphoto()));*/
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(elevation: 0,),
    body: Image(image: NetworkImage("https://images-platform.99static.com//9Z7KPNZ5sf285CFPTPOO3Uze1-E=/0x1:1000x1001/fit-in/500x500/99designs-contests-attachments/85/85229/attachment_85229023"),),);

}}