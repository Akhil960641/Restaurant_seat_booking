import 'package:flutter/material.dart';
import 'package:restaurant/Hotelmanagers.dart';
import 'package:restaurant/Registration.dart';

class restaurant extends StatelessWidget {
  const restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('asset/akaa.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                'Restaurants \n   ',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                  decoration: TextDecoration.overline,
                ),
              ),
            ),
            SizedBox(
              height: 400,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Registration();
                  },
                ));
              },
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),

                // color: Colors.lightBlueAccent,
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Hotelman();
                },));

              },
              child: Container(
                  width: 350,
                  height: 60,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                  color: Colors.white,

                ),

                // color: Colors.lightBlueAccent,
                child: Center(
                  child: Text(
                    'Hotel managers',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
              )
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
