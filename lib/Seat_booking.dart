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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          SliverAppBar(
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
                                    hotelName: widget.hotelName,
                                    location: widget.location,
                                    rating: widget.rating,
                                    foods: widget.foods,
                                    hotelimage: widget.hotelimage,
                                    sn: '100',
                                  );
                                },
                              ));
                            },
                            child: FourSeat(
                              sn: '100',
                              isFromHall: true,
                            )),
                        SizedBox(
                          width: size.width * .15,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return BookingConform(
                                    hotelName: widget.hotelName,
                                    location: widget.location,
                                    rating: widget.rating,
                                    foods: widget.foods,
                                    hotelimage: widget.hotelimage,
                                    sn: '101',
                                  );
                                },
                              ));
                            },
                            child: FourSeat(
                              sn: '101',
                              isFromHall: true,
                            )),
                      ],
                    ),
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return BookingConform(
                              hotelName: widget.hotelName,
                              location: widget.location,
                              rating: widget.rating,
                              foods: widget.foods,
                              hotelimage: widget.hotelimage,
                              sn: '102');
                        },
                      ));
                    },
                    child: TableSixSeat(
                      sn: '102',
                      isHomepage: true,
                    ),
                  )),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return BookingConform(
                              hotelName: widget.hotelName,
                              location: widget.location,
                              rating: widget.rating,
                              foods: widget.foods,
                              hotelimage: widget.hotelimage,
                              sn: '103');
                        },
                      ));
                    },
                    child: TableSixSeat(
                      sn: '103',
                      isHomepage: true,
                    ),
                  )),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return BookingConform(
                                    hotelName: widget.hotelName,
                                    location: widget.location,
                                    rating: widget.rating,
                                    foods: widget.foods,
                                    hotelimage: widget.hotelimage,
                                    sn: '104',
                                  );
                                },
                              ));
                            },
                            child: FourSeat(
                              sn: '104',
                              isFromHall: true,
                            )),
                        SizedBox(
                          width: size.width * .15,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return BookingConform(
                                    hotelName: widget.hotelName,
                                    location: widget.location,
                                    rating: widget.rating,
                                    foods: widget.foods,
                                    hotelimage: widget.hotelimage,
                                    sn: '105',
                                  );
                                },
                              ));
                            },
                            child: FourSeat(
                              sn: '105',
                              isFromHall: true,
                            )),
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
