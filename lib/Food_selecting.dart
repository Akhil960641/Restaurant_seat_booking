import 'package:flutter/material.dart';

class FoodSelecting extends StatefulWidget {
   FoodSelecting({Key? key,  required this.rating,
    required this.location,
    required this.foods,
    required this.hotelimage,
    required this.hotelName}) : super(key: key);
  String hotelName;
  double rating;
  String location;
  List<String> foods;
  String hotelimage;

  @override
  State<FoodSelecting> createState() => _FoodSelectingState();
}

class _FoodSelectingState extends State<FoodSelecting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.yellow ,
      ),
      body: Stack(
        children: [
          ListView.separated(
              itemBuilder: (context, index) {
            return ListTile(
              title: Text(widget.foods[index].toString().toUpperCase()),
            );
          }, separatorBuilder: (context, index) {
            return Divider();
          }, itemCount: widget.foods.length)
        ],
      ),
    );
  }
}
