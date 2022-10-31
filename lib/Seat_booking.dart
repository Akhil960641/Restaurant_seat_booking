import 'package:flutter/material.dart';
import 'package:restaurant/Resuble_widget/table_4seat.dart';
import 'package:restaurant/Resuble_widget/table_sixseat.dart';

class SeatBooking extends StatefulWidget {
  SeatBooking(
      {Key? key,
      required this.rating,
      required this.location,
      required this.foods,
      required this.hotelimage,
      required this.hotelName})
      : super(key: key);
  String hotelName;
  double rating;
  String location;
  List<String> foods;
  String hotelimage;

  @override
  State<SeatBooking> createState() => _SeatBookingState();
}

class _SeatBookingState extends State<SeatBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   backgroundColor: Colors.brown[900],
      //   title: Text(widget.hotelName.toUpperCase(),
      //       style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
      //       textAlign: TextAlign.center),
      //   centerTitle: true,
      // ),
      body: CustomScrollView(
        slivers: [
          Expanded(
            child: SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 180.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('SliverAppBar'),
                // background:AssetImage('asset/sagar1') ,
              ),
            ),
          ),
          // Container(
          //   height: 220,
          //   width: double.infinity,
          //   child: Image.asset(widget.hotelimage, fit: BoxFit.fill),
          // ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        FourSeat(),
                        SizedBox(
                          width: 70,
                        ),
                        FourSeat(),
                      ],
                    ),
                  ),
                  Positioned(
                    width: 10,
                    child: Center(child: TableSixSeat()),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Positioned(
                    width: 10,
                    child: Center(child: TableSixSeat()),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        FourSeat(),
                        SizedBox(
                          width: 70,
                        ),
                        FourSeat(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
