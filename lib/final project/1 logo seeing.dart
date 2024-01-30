import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '2 get started.dart';
import '3 login model.dart';
import '7 provider.dart';

void main()async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter() as TypeAdapter);
  Hive.openBox<User>('user');
  await Hive.openBox('task_box');
  runApp( ChangeNotifierProvider(create: (_) => MovieProvider(),
      child: GetMaterialApp(
            // useInheritedMediaQuery: true,
            // debugShowCheckedModeBanner: false,
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
