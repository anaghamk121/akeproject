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




import 'package:flutter/cupertino.dart';


import '7 model.dart';

final List<Map<String, dynamic>> data=[];

/*generate(
    100,
        (index) => Plant(
        title: "Plant $index", time: "${Random().nextInt(100) + 60} minute")); // random value aaytan time
*/
class PlantProvider with ChangeNotifier {  // with is a keyword
  final List<Plant> movieHome = data.cast<Plant>(); // moviehome list create cheyth ,data ne edth vech

  List<Plant> get movies => movieHome;   // retrive all the movies,kitye value ne get cheyan, moviehome le value movieslek kitan
  //final List<Plant> wishlist = []; // wishlist enna empty list vech
  List<String> wishlist = [];
  List<String> get wishplant => wishlist;


  void addToList(Plant plant) {  //add akan,model class ne vilich, wishlistlek add akan
    wishlist.add(plant as String);
    notifyListeners();  // data add cheythal aa screenil thenne change veran
  }

  void removeFromList(Plant plant) { //wishlistnn remove cheyan, or fav nn remove aakan
    wishlist.remove(plant);
    notifyListeners();
  }
}
