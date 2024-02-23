import 'package:flutter/material.dart';
import 'cart screen.dart'; // Import the CartScreen

 void main() {
   runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(), // Set your main screen as the HomeScreen
      routes: {
        '/cart': (context) => CartScreen(), // Define a route for the CartScreen
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart'); // Navigate to the CartScreen
          },
          child: Text('Go to Cart'),
        ),
      ),
    );
  }
}
