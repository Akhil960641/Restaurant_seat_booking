import 'package:flutter/material.dart';
import 'package:restaurant/Resuble_widget/six_seat.dart';

class TableSixSeat extends StatefulWidget {
   TableSixSeat({Key? key,required this.sn,required this.isHomepage}) : super(key: key);
String sn;
bool isHomepage;

  @override
  State<TableSixSeat> createState() => _TableSixSeatState();
}

class _TableSixSeatState extends State<TableSixSeat> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * .01,
                ),
                Sixseat(
                  isHomePage:widget.isHomepage ,
                ),
                SizedBox(
                  width: size.width * .027,
                ),
                Sixseat( isHomePage:widget.isHomepage), SizedBox(
                  width: size.width * .027,
                ),
                Sixseat(
                    isHomePage:widget.isHomepage

                ),
              ],
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Center(
              child: Container(
                // color: Colors.cyanAccent,
                width: size.width * .75,
                height: size.height * .11,
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
              height: size.height * .01,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * .01,
                ),
                Sixseat(
                    isHomePage:widget.isHomepage
                ),
                SizedBox(
                  width: size.width * .027,
                ),
                Sixseat( isHomePage:widget.isHomepage), SizedBox(
                  width: size.width * .027,
                ),
                Sixseat( isHomePage:widget.isHomepage),
              ],
            ),
          ],
        ),

    );

  }
}
