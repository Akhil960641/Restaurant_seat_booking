import 'package:flutter/material.dart';
import 'package:restaurant/Resuble_widget/table_4seat.dart';
import 'package:intl/intl.dart';
import 'package:restaurant/Resuble_widget/table_sixseat.dart';

class BookingConform extends StatefulWidget {
  BookingConform({Key? key, required this.sn}) : super(key: key);
  String sn;


  @override
  State<BookingConform> createState() => _BookingConformState();
}

class _BookingConformState extends State<BookingConform> {
  bool flag =true ;
  TimeOfDay? time;
  int a=0;

  DateTime? date;
  String txt = 'Time';
  String txtdate = 'date';

  timeFn(BuildContext ctx) async {
    time = await showTimePicker(context: ctx, initialTime: TimeOfDay.now());
    print('$time');
    setState(() {
      if (time == null) {
        txt = 'time';
      } else {
        txt = '${time!.hour} :${time!.minute}';
      }
    });
  }

  dateFn(BuildContext ctx) async {
    date = await showDatePicker(
        context: ctx,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));
    setState(() {
      if (date == null) {
        txtdate = 'Date';
      } else {
        // txtdate='${date!.day} :${date!.month} :${date!.year}';
        txtdate = DateFormat('yMMMd', 'en_US').format(date!);
      }
    });
  }

  // TextEditingController timeinput = TextEditingController();
  // Future<TimeOfDay?> selectedTime = showTimePicker(
  //   initialTime: TimeOfDay.now(),
  //   context: ,
  // );

  @override
  void initState() {
    a=int.parse(widget.sn);
    if(a==102||a==103){
      flag=false;

    }
    print(flag);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          (flag==true)?

            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                FourSeat(sn: widget.sn, isFromHall: false),
                SizedBox(
                  height: 200,
                ),
              ],
            ):
            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                TableSixSeat(sn: widget.sn),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    timeFn(context);
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(4, 0),
                          blurRadius: 10,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Center(child: Text(txt)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    dateFn(context);
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(4, 0),
                          blurRadius: 10,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Center(child: Text(txtdate)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
