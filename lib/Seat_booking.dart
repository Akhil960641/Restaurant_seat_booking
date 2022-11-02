import 'package:flutter/material.dart';
import 'package:restaurant/Booking_conform.dart';
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
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        backgroundColor: Colors.grey[200],
        //   title: Text(widget.hotelName.toUpperCase(),
        //       style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        //       textAlign: TextAlign.center),
        //   centerTitle: true,
        // ),
        body: CustomScrollView(
          slivers: [
            Expanded(
              child: SliverAppBar(
                backgroundColor: Colors.brown[400],
                pinned: true,
                snap: false,
                floating: false,
                expandedHeight: 280.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(widget.hotelName,
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  background: Image(
                      image: AssetImage(
                        widget.hotelimage,
                      ),
                      fit: BoxFit.fill),
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
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return BookingConform(
                                      sn: '100',
                                    );
                                  },
                                ));
                              },
                              child: FourSeat(
                                sn: '100',isFromHall: true,
                              )),
                          SizedBox(
                            width: 70,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return BookingConform(
                                      sn: '101',
                                    );
                                  },
                                ));
                              },
                              child: FourSeat(sn: '101',isFromHall: true,)),
                        ],
                      ),
                    ),
                    Positioned(
                      width: 10,
                      child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return BookingConform(sn: '102');
                              },));
                            },
                            child: TableSixSeat(
                        sn: '102',
                      ),
                          )),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Positioned(
                      width: 10,
                      child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return BookingConform(sn: '103');
                              },));
                            },
                            child: TableSixSeat(
                        sn: '103',
                      ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                        children: [
                          InkWell(onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BookingConform(sn: '104',);
                    },));
                          },

                              child: FourSeat(sn: '104',isFromHall: true,)),
                          SizedBox(
                            width: 70,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return BookingConform(sn: '105',);
                                },));
                              },
                              child: FourSeat(sn: '105',isFromHall: true,)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
