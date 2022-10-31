import 'package:flutter/material.dart';
import 'package:restaurant/Resuble_widget/Seat.dart';

class FourSeat extends StatefulWidget {
  const FourSeat({Key? key}) : super(key: key);

  @override
  State<FourSeat> createState() => _FourSeatState();
}

class _FourSeatState extends State<FourSeat> {
  @override
  Widget build(BuildContext context) {
    return
        Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Column(
                 children: [
                   SizedBox(width:20 ,),

                   Seat(),
                   SizedBox( height: 5),

                   Seat(

                   )
                 ],
               ),


               Container(
                 // color: Colors.cyanAccent,
                  height: 100,
                 width: 80,
                 decoration: BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                   BoxShadow(
                   color: Colors.black54,
                   offset: Offset(4, 4),
                   blurRadius: 10,
                   spreadRadius: 1,
                 ),
  ]
                 ),

                ),
               Column(
                 children: [
                   SizedBox(width:20 ,),
                   Seat(),
                   SizedBox(
                     height: 5,
                   ),
                   Seat()
                 ],
               )
             ],
           ),
         ],
       );

  }
}
