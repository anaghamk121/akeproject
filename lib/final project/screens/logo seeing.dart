
import 'dart:async';
import 'package:flutter/material.darT';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import '../model/loginmodel.dart';
import 'get started.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter() as TypeAdapter);
  Hive.openBox<User>('user');
  await Hive.openBox('task_box');
  runApp(
    //  ChangeNotifierProvider(
     // create: (_) => PlantProvider(),
     // child:
      GetMaterialApp(
        // useInheritedMediaQuery: true,
        // debugShowCheckedModeBanner: false,
        home: photo(),
        theme: ThemeData(),
      ));
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
        child: Image(
          image: AssetImage("images/greenega logo.png"),
        ),
      ),
    );
  }
}