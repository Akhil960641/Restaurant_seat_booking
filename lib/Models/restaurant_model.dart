import 'food.dart';

class Restorant{
  Restorant({required this.name,required this.rating,required this.Location,required this.foodList});
  String name;
  double rating;

  List<Food>? foodList;
  String Location;
}