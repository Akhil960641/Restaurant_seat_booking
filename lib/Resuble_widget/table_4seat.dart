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
    Size size=MediaQuery.of(context).size;
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                // SizedBox(width: size.width * .01,
                //   ),

                Seat(isHallpage: widget.isFromHall,

                ),
                SizedBox(  height: size.height * .007),

                Seat(isHallpage: widget.isFromHall,

                )
              ],
            ),
            SizedBox(
                width: size.width * .01

            ),


            Container(
              // color: Colors.cyanAccent,
              width: size.width * .22,
              height: size.height * .13,
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
                SizedBox( width: size.width * .05),
                Seat(isHallpage: widget.isFromHall,),
                SizedBox(
                   height: size.height * .007,
                ),
                Seat(isHallpage: widget.isFromHall,)
              ],
            )
          ],
        );

  }
}
