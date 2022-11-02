import 'package:flutter/material.dart';
import 'package:restaurant/Resuble_widget/Seat.dart';

class FourSeat extends StatefulWidget {
   FourSeat({Key? key,required this.sn,required this.isFromHall}) : super(key: key);
String sn;
bool isFromHall;



  @override
  State<FourSeat> createState() => _FourSeatState();
}

class _FourSeatState extends State<FourSeat> {
  @override
  Widget build(BuildContext context) {
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(width:20 ,),

                Seat(isHallpage: widget.isFromHall,

                ),
                SizedBox( height: 5),

                Seat(isHallpage: widget.isFromHall,

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
              child: Center(child: Text(widget. sn,style: TextStyle(fontSize: 18))),

             ),
            Column(
              children: [
                SizedBox(width:20 ,),
                Seat(isHallpage: widget.isFromHall,),
                SizedBox(
                  height: 5,
                ),
                Seat(isHallpage: widget.isFromHall,)
              ],
            )
          ],
        );

  }
}
