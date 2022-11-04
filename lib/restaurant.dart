import 'package:flutter/material.dart';
import 'package:restaurant/Hotelmanagers.dart';
import 'package:restaurant/Registration.dart';

class restaurant extends StatelessWidget {
  const restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      height: size.height,

      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('asset/akaa.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: size.height * .20,
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
                height: size.height * .35,
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
                width: size.width *.85,

                height: size.height * .08,

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
            SizedBox( height: size.height * .03,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Hotelman();
                },));

              },
              child: Container(
                  width: size.width *.85,

                  height: size.height * .08,

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
