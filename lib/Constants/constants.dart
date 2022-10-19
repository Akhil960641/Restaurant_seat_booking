import 'package:restaurant/Models/food.dart';

import '../Models/restaurant_model.dart';

class Constants {
  List<Restorant>? res = [
    Restorant(name: 'Sagar', rating: 9.5, Location: 'Kozhikode ', foodList: [
      Food(
          price: 130,
          description: 'afdtgsf',
          foodid: 1234,
          Foodname: 'Biriyani'),
      Food(price: 150, description: 'fxgds', foodid: 1211, Foodname: 'mandhi'),
      Food(price: 60, description: 'asasa', foodid: 2121, Foodname: 'meals')
    ]),
    Restorant(name: 'Sagar', rating: 8.5, Location: 'Kozhikode ', foodList: [
      Food(
          price: 110,
          description: 'asdtgsf',
          foodid: 1111,
          Foodname: 'Biriyani'),
      Food(price: 160, description: 'fxcds', foodid: 2211, Foodname: 'mandhi'),
      Food(price: 50, description: 'asasa', foodid: 2323, Foodname: 'meals')
    ]),
    Restorant(name: 'Sagar', rating: 7.5, Location: 'Civil ', foodList: [
      Food(
          price: 120,
          description: 'dddtgsf',
          foodid: 2222,
          Foodname: 'Biriyani'),
      Food(price: 140, description: 'foos', foodid: 1122, Foodname: 'mandhi'),
      Food(price: 70, description: 'asasa', foodid: 2244, Foodname: 'meals')
    ]),
    Restorant(name: 'Sagar', rating: 9.0, Location: 'Civil ', foodList: [
      Food(
          price: 100,
          description: 'ffdtgsf',
          foodid: 2134,
          Foodname: 'Biriyani'),
      Food(price: 120, description: 'fqqds', foodid: 2323, Foodname: 'mandhi'),
      Food(price: 30, description: 'asasa', foodid: 4141, Foodname: 'meals')
    ]),
  ];
}
