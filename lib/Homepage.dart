import 'package:flutter/material.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Models/restaurant_model.dart';
import 'package:restaurant/Resuble_widget/restorent_list.dart';
import 'package:restaurant/Seat_booking.dart';
import 'package:searchfield/searchfield.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          SizedBox( height: size.height * .001,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: Text('LOATION',style: TextStyle(fontSize: 20,),),
                ),
              ],
            ),
          ),
          // SizedBox( height: size.height * .0001),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),

              ),
              child: SearchField<Restorant>(
                searchStyle: TextStyle(fontSize: 15),
                searchInputDecoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border:
                    OutlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black54,
                    ),
                    hintText: 'hotel name'),
                suggestions: Constants.res!
                    .map(
                      (e) =>
                      SearchFieldListItem<Restorant>(
                        child: Container(
                          // width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(e.name),
                          ),
                        ),
                        e.name,
                        item: e,
                      ),
                ).toList(),
              ),
            ),
          ),
          SizedBox(
            height: size.height * .009,
          ),
          Text('Top picks',style: TextStyle(decoration: TextDecoration.overline)),
          SizedBox(
            height: size.height * .03,
          ),
          Expanded(
            child: Container(
              width: size.width,
              child: ListView.builder(itemBuilder: (context, index) {
                fn();
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        print('>>>>>>>${hName[index]['name']}');
                        return SeatBooking(
                            hotelName: hName[index]['name'],
                            location: hName[index]['loc'],
                            rating: hName[index]['rating'],
                            foods: hName[index]['food'],
                            hotelimage: hName[index]['img']);

                      },));
                    },
                    child: RestorentList(hotelName: hName[index]['name'],
                        location: hName[index]['loc'],
                        rating: hName[index]['rating'],
                        foods: hName[index]['food'],
                        hotelimage: hName[index]['img']),
                  ),
                );
              },
               itemCount: Constants.res!.length),
            ),
          )
        ],


      ),
    );
  }

  var temp;
  var foodName;
  var hName;

  fn() {
    hName = Constants.res!.map((e) {
      print('-------');
      foodName = e.foodList!.map((e) => e.Foodname).toList();
      temp = {'name': e.name,'rating': e.rating,'loc': e.Location,'food': foodName,'img': e.image};
      print(foodName);
      return temp;
    }).toList();

    print(hName);
  }
}
