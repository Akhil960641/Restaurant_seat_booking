import 'package:flutter/material.dart';
import 'package:restaurant/Resuble_widget/six_seat.dart';

class TableSixSeat extends StatefulWidget {
   TableSixSeat({Key? key,required this.sn}) : super(key: key);
String sn;

  @override
  State<TableSixSeat> createState() => _TableSixSeatState();
}

class _TableSixSeatState extends State<TableSixSeat> {
  @override
  Widget build(BuildContext context) {
    return
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Sixseat(),
                SizedBox(
                  width: 10,
                ),
                Sixseat(), SizedBox(
                  width: 10,
                ),
                Sixseat(

                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                // color: Colors.cyanAccent,
                height: 80,
                width: 300,
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
                    ]),
                child: Center(child: Text(widget. sn,style: TextStyle(fontSize: 18))),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Sixseat(),
                SizedBox(
                  width: 10,
                ),
                Sixseat(), SizedBox(
                  width: 10,
                ),
                Sixseat(),
              ],
            ),
          ],
        ),

    );

  }
}
