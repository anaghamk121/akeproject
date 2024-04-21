import 'package:akeproject/final%20project/screens/plant_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'Homepage.dart';

class IndoorPlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indoor Plant App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: mainscreen(),
    );
  }
}

class plantscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indoor Plants'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 30, // Spacing between rows
        ),
        itemCount: indoorPlants.length,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlantDetailsPage(
                      plant: indoorPlants[index],
                      cartplant: indoorPlants[index],
                    ),
                  ),
                );
              },
              child: Image.asset(
                indoorPlants[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Plant {
  final String name;
  final String description;
  final String imageUrl;

  Plant({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

final List<Plant> indoorPlants = [
  Plant(
    name: 'Snake Plant',
    description:
        'Snake plants are known for their air-purifying properties and low maintenance requirements.',
    imageUrl: 'assets/snake_plant.jpg',
  ),
  Plant(
    name: 'ZZ Plant',
    description:
        'ZZ plants are popular for their glossy green leaves and ability to thrive in low light conditions.',
    imageUrl: 'assets/zz_plant.jpg',
  ),
  // Add more plant objects as needed
];
