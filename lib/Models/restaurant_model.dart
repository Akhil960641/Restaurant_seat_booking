import 'food.dart';

class Restorant{
  Restorant({required this.name,required this.rating,required this.Location,required this.foodList,required this.image});
  String name;
  double rating;
  String image;

  List<Food>? foodList;
  String Location;
}