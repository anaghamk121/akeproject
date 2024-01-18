import 'dart:math';
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
}
