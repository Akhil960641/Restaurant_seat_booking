import 'package:flutter/material.dart';

class Hotelman extends StatefulWidget {
  const Hotelman({Key? key}) : super(key: key);

  @override
  State<Hotelman> createState() => _HotelmanState();
}

class _HotelmanState extends State<Hotelman> {
  TextEditingController Hotelname = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Phonenumber = TextEditingController();
  bool flag = true;
  var valid=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    if (flag == true) {
      return Scaffold(
        body: Container(
          height:size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/aak.jpg'), fit: BoxFit.cover),
          ),
          child: Form(
            key:valid ,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*.08,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          'Create \nAccount',
                          style: TextStyle(color: Colors.white, fontSize: 33),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height*.07,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: size.width * .88,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.white
                          ),
                          controller: Hotelname,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10)),

                              fillColor: Colors.white,
                              labelText: 'Hotelname',
                              labelStyle: TextStyle(color: Colors.white),
                              suffixIcon: Icon(Icons.restaurant,color: Colors.white),

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(9)
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        width: size.width * .88,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'no data';
                          }else if(value.length<10){
                            return 'too short';
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        controller: Phonenumber,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10)),

                          fillColor: Colors.white,
                          labelText: 'PhoneNumber',
                            labelStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(Icons.numbers,color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*.01,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                          width: size.width * .88,
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'no data';
                            }else if(value.length<8){
                              return 'too short';
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: TextStyle(color: Colors.white),

                          controller: Password,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10)),

                              fillColor: Colors.white,
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              suffixIcon: Icon(Icons.password,color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    height: size.height*.05,
                  ),
                  InkWell(
                    onTap: () {
                      if(valid.currentState!.validate()){  print('Clicked');}

                    },
                    child: Container(
                        width: size.width * .3,
                        height: size.height * .06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      // color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          'Sing up',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [

                        Text('Dont have account', style: TextStyle(fontSize: 17),),
                        TextButton(onPressed: () {
                          setState(() {
                            flag = false;
                          });
                        }, child: Text(
                          'Sing in...', style: TextStyle(fontSize: 17),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    else {
      return Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/aak.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            key: valid,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*.08,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          'Welcome \nBack',
                          style: TextStyle(color: Colors.white, fontSize: 33),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: size.height*.08,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        width: size.width * .88,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'no data';
                          }else if(value.length<10){
                            return 'too short';
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.white),


                        controller: Phonenumber,

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10)),

                          fillColor: Colors.white,
                          labelText: 'PhoneNumber',
                            labelStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(Icons.numbers,color: Colors.white),

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*.01,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                          width: size.width * .88,
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'no data';
                            }else if(value.length<8){
                              return 'too short';
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: TextStyle(color: Colors.white),
                          controller: Password,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10)),
                              fillColor: Colors.white,
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              suffixIcon: Icon(Icons.lock,color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    height: size.height*.06,
                  ),
                  InkWell(
                    onTap: () {
                      if(valid.currentState!.validate()){  print('Clicked');}

                    },
                    child: Container(
                      width: size.width*.3,
                      height: size.width*.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      // color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Row(

                      children: [

                        Text('Already Account', style: TextStyle(fontSize: 17),),
                        TextButton(onPressed: () {
                          setState(() {
                            flag = true;
                          });
                        }, child: Text(
                          'Sign up...', style: TextStyle(fontSize: 17),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}

