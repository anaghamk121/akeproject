/*import 'dart:math';
import 'package:flutter/cupertino.dart';
import '7 model.dart';

final List<Movie> data = List.generate(
    100,
        (index) => Movie(
        title: "Movie $index", time: "${Random().nextInt(100) + 60} minute"));

class MovieProvider with ChangeNotifier {
  final List<Movie> movieHome = data;

  List<Movie> get movies => movieHome; // retrive all the movies
  final List<Movie> providerwishlist = [];

  List<Movie> get wishmovie => providerwishlist;


  void addToList(Movie movie) {
    providerwishlist.add(movie);
    notifyListeners();
  }

  void removeFromList(Movie movie) {
    providerwishlist.remove(movie);
    notifyListeners();
  }
}*/


import 'dart:math';

import 'package:akeproject/final%20project/6%20plant%20data.dart';
import 'package:flutter/cupertino.dart';
import '7 model.dart';
final List<Map<String, dynamic>> data=[];

/*
final List<Plant> data = PlantCard(
  name: '', price:  '', image: '', details: '', scientificname: '', isWishlist: ,
  onToggleWishlist: () {  }, isInCart: , onToggleCart: () {  },) as List<Plant>;
*/
/*generate(
    100,
        (index) => Plant(
        title: "Plant $index", time: "${Random().nextInt(100) + 60} minute")); // random value aaytan time
*/

class PlantProvider with ChangeNotifier {
  final List<Plant> plantHome = data.cast<Plant>();
  List<Plant> get movies => plantHome;
  final List<Plant> wishlist = [];

  List<Plant> get wishplant => wishlist;


  void addToList(Plant plant) {
    wishlist.add(plant);
    notifyListeners();
  }

  void removeFromList(Plant plant) {
    wishlist.remove(plant);
    notifyListeners();
  }
}
